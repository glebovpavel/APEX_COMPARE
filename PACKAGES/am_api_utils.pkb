CREATE OR REPLACE PACKAGE BODY am_api_utils AS  
 
  cursor export_procedures (
    p_apex_schema In VARCHAR2
  )
  is
  select distinct object_name as procedure_name,
         subprogram_id,
         object_id
  from all_arguments aa
  where package_name = 'WWV_FLOW_API'
  and owner = p_apex_schema
  and object_name like 'CREATE%'
   --exclude functions - can have the same name as procedures 
  and ((not exists (select * 
                  from all_arguments aa2
                  where aa2.object_id = aa.object_id
                    and aa2.subprogram_id = aa.subprogram_id
                    and package_name = 'WWV_FLOW_API'
                    and owner = p_apex_schema
                    and argument_name is null)                    
      --select only procedures with P_ID parameter 
      and exists (select * 
                  from all_arguments aa3
                  where aa3.object_id = aa.object_id
                    and aa3.subprogram_id = aa.subprogram_id
                    and package_name = 'WWV_FLOW_API'
                    and owner = p_apex_schema
                    and argument_name = 'P_ID')
       ) or  object_name = 'CREATE_FLOW');

  CURSOR procedure_declaration (
    p_procedure_name IN VARCHAR2,
    p_apex_schema In VARCHAR2 
  ) IS
  WITH src AS (
    SELECT text,
           line
    FROM all_source
    WHERE owner = p_apex_schema
          AND name = 'WWV_FLOW_API'
          AND type = 'PACKAGE'
  ), strt AS (
    SELECT MAX(line) line_begin
    FROM src
    WHERE instr(upper(text), 'PROCEDURE') > 0
          AND ( instr(upper(text), p_procedure_name || ' ') > 0
                OR instr(upper(text), p_procedure_name || '(') > 0 )
  ), fnsh AS (
    SELECT MIN(line) AS line_end
    FROM src,
         strt
    WHERE src.line > strt.line_begin
          AND instr(text, ';') > 0
  )
  SELECT CASE
    WHEN
      line = fnsh.line_end
    THEN
      replace(text, ';',' ')
    ELSE text
           end text
  FROM src,
       strt,
       fnsh
  WHERE line BETWEEN strt.line_begin AND fnsh.line_end
  ORDER BY line;
  ------------------------------------------------------------------------------
  
  function get_apex_schema
  return varchar2
  is
    v_apex_schema varchar2(30);
  begin
    select max(u1.username) as current_apex_user
    into v_apex_schema
    from all_users u1 
    where u1.username like 'APEX%' 
      and REGEXP_LIKE (substr(u1.username,'6',1), '^[0-9]*$');
      
    return v_apex_schema;  
  end get_apex_schema;
  ------------------------------------------------------------------------------
  
  procedure add_api_procedure_declaration (
    p_procedure_name           IN VARCHAR2,
    p_parent_parameter_name    IN VARCHAR2,
    p_parent_parameter_default IN VARCHAR2
  ) 
  is
  begin
    update am_api_procedures
    set parent_parameter_name = nvl(p_parent_parameter_name,parent_parameter_name),
        parent_parameter_default = nvl(p_parent_parameter_default,parent_parameter_default)
    where procedure_name = p_procedure_name;
    if SQL%ROWCOUNT = 0 then
      INSERT INTO am_api_procedures (
        procedure_name,
        parent_parameter_name,
        parent_parameter_default
      ) VALUES (
        p_procedure_name,
        p_parent_parameter_name,
        p_parent_parameter_default
      );
    end if;
  end add_api_procedure_declaration;
  ------------------------------------------------------------------------------
  
 
  PROCEDURE get_parent_parameter (
    p_procedure_name IN VARCHAR2,
    p_apex_schema IN VARCHAR2,
    o_parent_parameter_name OUT varchar2,
    o_parent_parameter_default OUT varchar2
  ) 
  IS
    v_parent_parameter_name am_api_procedures.parent_parameter_name%TYPE;
    v_parent_parameter_default am_api_procedures.parent_parameter_default%TYPE;
    v_parameter_weight number default 0;
    
    procedure set_default(
      p_parent_parameter_default in varchar2,
      p_parent_parameter_name in varchar2,
      p_weight  in number
    ) 
    is
    begin
      if p_weight > v_parameter_weight then
        v_parameter_weight := p_weight;
        v_parent_parameter_name := p_parent_parameter_name;
        v_parent_parameter_default := p_parent_parameter_default;
      end if;
    end set_default;
  BEGIN
    FOR i IN procedure_declaration(
      p_procedure_name => p_procedure_name,
      p_apex_schema => p_apex_schema 
    ) LOOP
      IF instr(i.text, ' wwv_flow.g_flow_id') > 0 THEN
        set_default('G_FLOW_ID',am_utils.get_parameter_name(i.text),1);
      ELSIF instr(i.text, ' g_page_id',2) > 0 THEN
        set_default('G_PAGE_ID',am_utils.get_parameter_name(i.text),3);
      ELSIF instr(i.text, ' g_region_id') > 0 THEN
        set_default('G_REGION_ID',am_utils.get_parameter_name(i.text),4);
      ELSIF instr(i.text, ' g_worksheet_id',5) > 0 THEN
        set_default('G_WORKSHEET_ID',am_utils.get_parameter_name(i.text),6);
      ELSIF instr(i.text, ' g_lov_id',7) > 0 THEN
        set_default('G_LOV_ID',am_utils.get_parameter_name(i.text),8);
      ELSIF instr(i.text, ' g_menu_id',9) > 0 THEN
        set_default('G_MENU_ID',am_utils.get_parameter_name(i.text),10);
      ELSE
        NULL;
      END IF;
    END LOOP;
    
    o_parent_parameter_name := v_parent_parameter_name; 
    o_parent_parameter_default := v_parent_parameter_default;
  END get_parent_parameter;
  ------------------------------------------------------------------------------  
  
  PROCEDURE fill_api_procedures_table
  IS
    v_apex_schema varchar2(30);
    v_parent_parameter_name am_api_procedures.parent_parameter_name%TYPE;
    v_parent_parameter_default am_api_procedures.parent_parameter_default%TYPE;
  BEGIN
    v_apex_schema := get_apex_schema;
  
    FOR i IN export_procedures(v_apex_schema) LOOP
      get_parent_parameter (
        p_procedure_name => i.procedure_name,
        p_apex_schema => v_apex_schema,
        o_parent_parameter_name => v_parent_parameter_name,
        o_parent_parameter_default => v_parent_parameter_default
      ); 
      add_api_procedure_declaration (
       p_procedure_name           => i.procedure_name,
       p_parent_parameter_name    => v_parent_parameter_name,
       p_parent_parameter_default => v_parent_parameter_default
      ); 
    END LOOP;
  END fill_api_procedures_table;

END am_api_utils;
/
