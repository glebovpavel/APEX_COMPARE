CREATE OR REPLACE PACKAGE BODY am_tree AS

  type t_hierarchy_parent_prev is record (
    procedure_name am_tree_procedures.procedure_name%TYPE,
    scope_par_val  am_tree_procedures.procedure_name%TYPE,  
    parent_call_id am_tree_procedures.parent_call_id%TYPE,
    parent_apex_id  am_tree_procedures.apex_id%TYPE,
    call_id am_tree_procedures.call_id%TYPE
  );
  v_hierarchy_parent_prev t_hierarchy_parent_prev;
  
  type t_parent_procedure_name_call is table of am_tree_procedures.parent_call_id%TYPE index by am_tree_procedures.procedure_name%TYPE;
  v_parent_procedure_name_call t_parent_procedure_name_call;
  ------------------------------------------------------------------------------
  
  function get_procedure_name_call_exists(
    p_procedure_name am_tree_procedures.procedure_name%TYPE
  ) return am_tree_procedures.call_id%TYPE
  is
    v_call_id am_tree_procedures.call_id%TYPE;
  begin
    v_call_id := v_parent_procedure_name_call(p_procedure_name);
    return v_call_id;    
  exception
     when no_data_found then
        return null;
  end get_procedure_name_call_exists;
  
  ------------------------------------------------------------------------------
  FUNCTION get_api_procedure_data(
    p_procedure_name in am_api_procedures.procedure_name%TYPE
  ) return am_api_procedures%ROWTYPE
  IS
    r_api_procedures am_api_procedures%ROWTYPE;
  BEGIN
    select *
    into r_api_procedures
    from am_api_procedures
    where procedure_name = p_procedure_name;
    
    return r_api_procedures;
  EXCEPTION
    WHEN NO_DATA_FOUND then
       raise_application_error(-20001,'APEX API Procedure not found '||p_procedure_name);
  END get_api_procedure_data;
  ------------------------------------------------------------------------------
  
  function get_template_option_desc(
    p_export_id IN am_exports.export_id%TYPE,
    p_template_type in varchar2,
    p_template_options in varchar2
  )
  return varchar2
  is
    v_display_names am_tree_procedures.display_value%TYPE; 
  begin
    select substr(listagg(case 
                 when group_name is null then options
                 else group_name||'('||options||')'
               end,','),1,300) as opt
    into v_display_names           
    from (               
        select group_name,
               listagg(display_name,';') within group(order by 1) as options       
        from  (select display_name,
                      css_class,
                      (select display_name 
                       from am_template_opt_group tog
                       where tog.template_opt_group_apex_id = dto.template_opt_group_apex_id
                         and export_id = p_export_id
                       ) as group_name
               from am_template_options dto 
               where export_id = p_export_id
                 and theme_id  = app_properties.theme_id             
                 and template_apex_id = nvl(app_properties.page_template,template_apex_id)
                 and template_type = p_template_type       
               union
               select 'Default' as display_name,
                      '#DEFAULT#' as css_class,
                      '' as group_name 
               from dual       
               )  dto,
              (select column_value as css 
               from table(apex_string.split(p_template_options,':')) 
               ) css
        where dto.css_class = css.css
    group by group_name);
    
    --if length(p_template_options) > length('#DEFAULT#') and p_template_type = 'PAGE' then
    --  raise_application_error(-20001,'p_template_options='||p_template_options||' page_template='||app_properties.page_template||' p_template_type='||p_template_type);
    --end if;
    
    return v_display_names;
  exception
    when others then      
      raise_application_error(-20001,SQLERRM||'p_template_options='||p_template_options||' page_template='||app_properties.page_template||' p_template_type='||p_template_type||' theme_id='||app_properties.theme_id);  
  end get_template_option_desc;
  ------------------------------------------------------------------------------
  
  PROCEDURE get_clob_from_joined_string (    
    p_ref_cur IN t_refcur,
    p_clob IN OUT NOCOPY CLOB
  ) 
  is
    i        t_script_rec;
    v_string am_lines.text%TYPE;
  BEGIN
    LOOP
      FETCH p_ref_cur INTO i;
      EXIT WHEN p_ref_cur%notfound;
      IF i.text LIKE '%))'
      THEN
        p_clob := p_clob || ltrim(rtrim(i.text, '''))'), '''');
        EXIT;
      ELSE
        v_string := substr(i.text,2,length(i.text)-3);
        if v_string is not null then
         p_clob := p_clob || v_string ||chr(10);-- || '\\n';
        end if; 
      END IF;
    END LOOP;
  END get_clob_from_joined_string;
  ------------------------------------------------------------------------------
  
  FUNCTION get_proc_display_value(
    p_apex_id IN am_tree_procedures.apex_id%TYPE,
    p_export_id IN am_exports.export_id%TYPE
  ) return am_tree_procedures.display_value%TYPE
  IS
    v_display_value  am_tree_procedures.display_value%TYPE;
  BEGIN
    select display_value
    into v_display_value
    from am_tree_procedures
    where export_id = p_export_id
      and apex_id = p_apex_id
      and rownum < 2;
       --because create_row_template_patch and create_row_template have the same IDs
    return v_display_value;
  EXCEPTION
    when no_data_found then
       return '';
    when others then
       raise_application_error(-20001,'p_apex_id='||p_apex_id||' '||SQLERRM);
  END get_proc_display_value;  
  ------------------------------------------------------------------------------
  
  function get_page_template(
    p_export_id        IN   am_exports.export_id%TYPE
  )
  return am_templates_display_points.template_apex_id%TYPE
  is
    v_page_template_id am_themes.default_page_template_id%TYPE;
  begin
    if app_properties.page_template is not null then
      v_page_template_id := app_properties.page_template;
    else
      select case 
               when app_properties.page_mode ='MODAL' then default_dialog_template_id
               else default_page_template_id 
             end page_template_id
      into v_page_template_id       
      from am_themes
      where theme_id = app_properties.theme_id
       and export_id = p_export_id;
    end if;
    
    return v_page_template_id;
  end get_page_template;
  ------------------------------------------------------------------------------

  PROCEDURE convert_pocedure_call (
    p_procedure_name   IN   am_tree_procedures.procedure_name%TYPE,
    p_ref_cur          IN   t_refcur,
    p_parent_call_id   IN   am_tree_procedures.parent_call_id%TYPE,
    p_export_id        IN   am_exports.export_id%TYPE,
    p_block_scope      IN   am_tree_procedures.scope%TYPE,  
    p_pos_from         IN   am_tree_procedures.pos_from%TYPE
  ) 
  IS
    i                  t_script_rec;
    v_parameter_name   am_tree_parameters.parameter_name%TYPE;
    v_parameter_type   am_tree_parameters.parameter_type%TYPE;
    v_value            VARCHAR2(4000 CHAR);
    v_clob             CLOB;
    v_sort_value       am_tree_procedures.sort_value%TYPE;
    v_display_value    am_tree_procedures.display_value%TYPE;
    v_display_data     am_tree_parameters.display_data%TYPE;
    v_scope_par_value  am_tree_procedures.procedure_name%TYPE; 
    v_call_id          am_tree_procedures.call_id%TYPE;
    v_current_parent_call_id   am_tree_procedures.parent_call_id%TYPE;
    v_parent_call_id   am_tree_procedures.parent_call_id%TYPE;
    v_parent_apex_id   am_tree_procedures.parent_apex_id%TYPE;    
    v_apex_id          am_tree_procedures.apex_id%TYPE;
    v_begin_line_no    am_lines.line_no%TYPE;
    v_par_begin_line_no    am_lines.line_no%TYPE;
    v_end_line_no      am_lines.line_no%TYPE;
    r_api_procedures   am_api_procedures%ROWTYPE;    
    a_parameters       t_paramets;
    a_clob_parameters  t_clob_paramets;
    v_pos_to           NUMBER;
    TYPE t_am_tree_parameters IS TABLE OF am_tree_parameters%ROWTYPE;
    v_am_tree_parameters t_am_tree_parameters;
    ----------------------------------------------------------------------------
    
    function get_parameter(p_parameter in am_tree_parameters.parameter_name%TYPE)
    return am_tree_parameters.data%type
    is
    begin
      return am_utils.get_parameter(
        p_parameter => p_parameter,
        p_parameters => a_parameters
      );
    end get_parameter;
    
    function get_clob_parameter(p_parameter_name in VARCHAR2)
    return am_tree_parameters.data_clob%type
    is    
    begin
      return a_clob_parameters(p_parameter_name);
    exception
       when no_data_found  then
         return get_parameter(p_parameter_name);
         --raise_application_error(-20001,'No value found for '||p_parameter_name);
    end get_clob_parameter;

  BEGIN
    v_am_tree_parameters := t_am_tree_parameters();
    v_parent_call_id := p_parent_call_id;
    v_current_parent_call_id := p_parent_call_id;

    v_call_id := am_call_seq.nextval;
    if v_parent_procedure_name_call.exists(p_procedure_name) then
      v_parent_procedure_name_call(p_procedure_name) := v_call_id;
    end if;
    
    r_api_procedures := get_api_procedure_data(p_procedure_name);
    LOOP
      FETCH p_ref_cur INTO i;
      IF p_ref_cur%notfound OR i.text LIKE ');'
      THEN
        v_end_line_no := i.line_no;
        v_pos_to := i.pos_to;
        EXIT;
      END IF;
      
      debug_info.line_no := i.line_no;
      
      IF v_begin_line_no IS NULL THEN 
        v_begin_line_no := i.line_no -1;
      END IF;
      
      v_par_begin_line_no := i.line_no;
      v_parameter_type := '';
      v_parameter_name := '';
      v_value := '';
      v_clob := '';
      
      IF i.text LIKE ',p_%' OR i.text LIKE ' p_%' THEN -- parameter
        v_parameter_name := am_utils.get_parameter_name(i.text);        
        IF instr(i.text, 'wwv_flow_api.id') > 0 THEN
          v_value := regexp_substr(i.text,'wwv_flow_api.id[(]((\d+))[)]',1,1,'',1);          
          v_display_data := get_proc_display_value(
            p_apex_id => v_value,
            p_export_id => p_export_id
          );
          v_parameter_type := 'I';
        ELSIF instr(i.text, 'wwv_flow_string.join') > 0 THEN
          get_clob_from_joined_string(
            p_ref_cur => p_ref_cur,
            p_clob => v_clob
           );
          a_clob_parameters(v_parameter_name) := v_clob;
          v_value := substr(v_clob,1,4000);
          v_display_data := substr(v_value,1,300);
          v_parameter_type := 'T';
        ELSIF instr(i.text, 'wwv_flow.g_flow_id') > 0 THEN 
          --v_value := 'g_flow_id';
-- !!!!          
          v_value := -1;
          v_display_data := '-1';
        ELSE
          v_value := substr(i.text, instr(i.text, '=>') + 2);
          v_value := rtrim(ltrim(v_value, ''''), '''');
          v_display_data := substr(v_value,1,300);
        END IF; 
        
        -- special parameters
        IF v_parameter_name = 'P_ID' THEN
          v_apex_id := am_utils.to_num(
            p_str => v_value,
            p_line_no => i.line_no
          );
          v_parameter_type := 'P';
          v_display_data := substr(v_value,1,300);
        ELSIF v_parameter_name = r_api_procedures.order_parameter_name THEN 
          v_sort_value := substr(v_value,1,30);
        ELSIF v_parameter_name = r_api_procedures.display_parameter_name THEN 
          v_display_value := substr(v_value,1,300);
        ELSIF v_parameter_name = r_api_procedures.scope_parameter_name THEN
          v_scope_par_value := substr(v_value,1,100);
        ELSIF v_parameter_name = r_api_procedures.parent_parameter_name THEN 
          v_parent_apex_id := am_utils.to_num(
            p_str => v_value,
            p_line_no => i.line_no
          );          
          
        ELSIF p_procedure_name = 'CREATE_PAGE' and v_parameter_name = 'P_PAGE_TEMPLATE_OPTIONS' THEN
          v_display_data := get_template_option_desc(
            p_export_id => p_export_id,
            p_template_type => 'PAGE',
            p_template_options => v_value
          );
        ELSIF p_procedure_name = 'CREATE_PAGE' and v_parameter_name = 'P_NAV_LIST_TEMPLATE_OPTIONS' THEN
          v_display_data := get_template_option_desc(
            p_export_id => p_export_id,
            p_template_type => 'LIST',
            p_template_options => v_value
          );
        ELSIF p_procedure_name = 'CREATE_PAGE_BUTTON' and v_parameter_name = 'P_BUTTON_TEMPLATE_OPTIONS' THEN
          v_display_data := get_template_option_desc(
            p_export_id => p_export_id,
            p_template_type => 'BUTTON',
            p_template_options => v_value
          );
        ELSIF p_procedure_name = 'CREATE_PAGE_ITEM' and v_parameter_name = 'P_ITEM_TEMPLATE_OPTIONS' THEN
          v_display_data := get_template_option_desc(
            p_export_id => p_export_id,
            p_template_type => 'FIELD',
            p_template_options => v_value
          );
        ELSIF p_procedure_name = 'CREATE_PAGE_PLUG' and v_parameter_name = 'P_REGION_TEMPLATE_OPTIONS' THEN
          v_display_data := get_template_option_desc(
            p_export_id => p_export_id,
            p_template_type => 'REGION',
            p_template_options => v_value
          );
        ELSIF p_procedure_name = 'CREATE_REPORT_REGION' and v_parameter_name = 'P_REGION_TEMPLATE_OPTIONS' THEN
          v_display_data := get_template_option_desc(
            p_export_id => p_export_id,
            p_template_type => 'REPORT',
            p_template_options => v_value
          );
        ELSIF p_procedure_name = 'CREATE_USER_INTERFACE' and v_parameter_name = 'P_NAV_LIST_TEMPLATE_OPTIONS' THEN
          v_display_data := get_template_option_desc(
            p_export_id => p_export_id,
            p_template_type => 'LIST',
            p_template_options => v_value
          );
        ELSIF p_procedure_name = 'CREATE_USER_INTERFACE' and v_parameter_name = 'P_NAV_BAR_TEMPLATE_OPTIONS' THEN
          v_display_data := get_template_option_desc(
            p_export_id => p_export_id,
            p_template_type => 'LIST',
            p_template_options => v_value
          );
        END IF;
        
        v_am_tree_parameters.extend;
        v_am_tree_parameters(v_am_tree_parameters.count).call_id := v_call_id; 
        v_am_tree_parameters(v_am_tree_parameters.count).export_id := p_export_id;
        v_am_tree_parameters(v_am_tree_parameters.count).parameter_name := v_parameter_name;
        v_am_tree_parameters(v_am_tree_parameters.count).data_clob := v_clob;
        v_am_tree_parameters(v_am_tree_parameters.count).data := v_value;
        v_am_tree_parameters(v_am_tree_parameters.count).display_data := v_display_data;
        v_am_tree_parameters(v_am_tree_parameters.count).begin_line_no := v_par_begin_line_no;
        v_am_tree_parameters(v_am_tree_parameters.count).end_line_no := i.line_no;
        v_am_tree_parameters(v_am_tree_parameters.count).parameter_type := v_parameter_type;        
        
        a_parameters(v_parameter_name) := v_value;
      END IF;  
    END LOOP;
    
    
    forall l_ind IN 1 .. v_am_tree_parameters.count 
    insert into am_tree_parameters 
    values v_am_tree_parameters(l_ind);
    
    --!!!
    /*
    if r_api_procedures.scope_parameter_name is not null and v_scope_par_value is null then
       dbms_output.put_line('<'||r_api_procedures.scope_parameter_name||'/'||i.line_no||'>');
    end if;
    */
    
    IF p_procedure_name = 'CREATE_PAGE_PLUG' then
       if get_parameter('P_PARENT_PLUG_ID') is not null then
         v_current_parent_call_id := am_hierarchy.get_parent_region_call_id (
           p_export_id => p_export_id,
           p_parent_region_apex_id => get_parameter('P_PARENT_PLUG_ID')
         );
         v_parent_call_id := v_current_parent_call_id;
       else
         v_current_parent_call_id := p_parent_call_id;
         v_scope_par_value := nvl(am_hierarchy.get_region_display_point(
              p_export_id => p_export_id,
              p_placeholder => get_parameter('P_PLUG_DISPLAY_POINT'),      
              p_template_apex_id => get_page_template(p_export_id => p_export_id) 
            ),v_scope_par_value);
          v_parent_call_id := am_hierarchy.get_parent(
            p_export_id      => p_export_id,
            p_parent_procedure_name => r_api_procedures.parent_procedure_name,
            p_local_scope    => r_api_procedures.scope,
            p_scope_par_val  => v_scope_par_value,
            p_parent_call_id => v_current_parent_call_id,
            p_parent_apex_id => v_parent_apex_id
          );   
       end if;
    else
      if v_hierarchy_parent_prev.procedure_name = p_procedure_name and
         v_hierarchy_parent_prev.scope_par_val = v_scope_par_value and
         v_hierarchy_parent_prev.parent_call_id = v_current_parent_call_id and
         v_hierarchy_parent_prev.parent_apex_id = v_parent_apex_id 
      then
         v_parent_call_id :=  v_hierarchy_parent_prev.call_id;      
      else
        v_parent_call_id := am_hierarchy.get_parent(
          p_export_id      => p_export_id,
          p_parent_procedure_name => r_api_procedures.parent_procedure_name,
          p_local_scope    => r_api_procedures.scope,
          p_scope_par_val  => v_scope_par_value,
          p_parent_call_id => v_current_parent_call_id,
          p_parent_apex_id => v_parent_apex_id
        );
        v_hierarchy_parent_prev.procedure_name := p_procedure_name;
        v_hierarchy_parent_prev.scope_par_val := v_scope_par_value;
        v_hierarchy_parent_prev.parent_call_id := v_current_parent_call_id;
        v_hierarchy_parent_prev.parent_apex_id := v_parent_apex_id;
        v_hierarchy_parent_prev.call_id := v_parent_call_id;
      end if;  
    end if;
    
    if regexp_instr(r_api_procedures.order_parameter_name,'^\d+') > 0 then
      v_sort_value := r_api_procedures.order_parameter_name;
    end if;
  
    INSERT INTO am_tree_procedures(
      call_id,
      parent_call_id,
      parent_apex_id,
      export_id,
      procedure_name,
      scope,
      begin_line_no,
      end_line_no,
      pos_from,
      pos_to,
      sort_value,
      display_value,
      apex_id
    ) 
    VALUES (
      v_call_id ,--call_id
      nvl(v_parent_call_id,p_parent_call_id), --parent_call_id
      v_parent_apex_id, --parent_apex_id
      p_export_id, --export_id
      p_procedure_name, --procedure_name
      p_block_scope, --scope
      v_begin_line_no, --begin_line_no
      v_end_line_no, --end_line_no
      p_pos_from,
      v_pos_to,
      nvl(v_sort_value,to_char(v_apex_id)), --sort_value
      v_display_value, --display_value
      v_apex_id --apex_id
    );
    IF p_procedure_name = 'CREATE_TEMPLATE_OPTION' then  
        am_utils.save_template_option(
          p_export_id => p_export_id,
          p_theme_id => get_parameter('P_THEME_ID'),
          p_display_name => get_parameter('P_DISPLAY_NAME'),
          p_css_class => get_parameter('P_CSS_CLASSES'),
          p_template_apex_id => coalesce(get_parameter('P_PAGE_TEMPLATE_ID'),
                                coalesce(get_parameter('P_REGION_TEMPLATE_ID'),
                                coalesce(get_parameter('P_REPORT_TEMPLATE_ID'),
                                coalesce(get_parameter('P_BREADCRUMB_TEMPLATE_ID'),
                                coalesce(get_parameter('P_LIST_TEMPLATE_ID'),
                                coalesce(get_parameter('P_FIELD_TEMPLATE_ID'),
                                get_parameter('P_BUTTON_TEMPLATE_ID'))))))),
          p_template_type => get_parameter('P_TEMPLATE_TYPES'),
          p_template_opt_group_apex_id => get_parameter('P_GROUP_ID')
        );
    elsif p_procedure_name = 'CREATE_TEMPLATE_OPT_GROUP' then
        am_utils.save_template_opt_group(
          p_export_id => p_export_id,
          p_theme_id => get_parameter('P_THEME_ID'),
          p_display_name => get_parameter('P_DISPLAY_NAME'),
          p_template_opt_group_apex_id => get_parameter('P_ID')
        );
    elsif p_procedure_name = 'CREATE_THEME' then
      am_utils.save_theme(
        p_export_id => p_export_id,
        p_theme_id => get_parameter('P_THEME_ID'),
        p_default_page_template => get_parameter('P_DEFAULT_PAGE_TEMPLATE'),
        p_default_dialog_template => get_parameter('P_DEFAULT_DIALOG_TEMPLATE') 
      );
    elsif p_procedure_name = 'CREATE_TEMPLATE' then  
      am_utils.save_template(
        p_export_id => p_export_id,
        p_template_apex_id => get_parameter('P_ID'), 
        p_header  => get_clob_parameter('P_HEADER_TEMPLATE'),
        p_box  => get_clob_parameter('P_BOX'),
        p_footer  => get_clob_parameter('P_FOOTER_TEMPLATE')
      );
    elsif p_procedure_name = 'CREATE_PAGE_TMPL_DISPLAY_POINT' then  
      am_utils.save_templates_display_points(
        p_export_id => p_export_id,
        p_display_name => get_parameter('P_NAME'),
        p_placeholder => get_parameter('P_PLACEHOLDER'),      
        p_template_apex_id => get_parameter('P_PAGE_TEMPLATE_ID')
      );
    elsif p_procedure_name = 'IMPORT_BEGIN' then
      app_properties.app_id := get_parameter('P_DEFAULT_APPLICATION_ID');
    elsif p_procedure_name = 'CREATE_USER_INTERFACE' then
      if get_parameter('P_IS_DEFAULT') = 'true' then 
        app_properties.theme_id := get_parameter('P_THEME_ID');
      end if;
    elsif p_procedure_name = 'CREATE_PAGE' then
      app_properties.page_id := get_parameter('P_ID');
      app_properties.page_mode := get_parameter('P_PAGE_MODE');
      app_properties.page_template := get_parameter('P_STEP_TEMPLATE');
      
      am_hierarchy.align_create_page_procedure(
        p_call_id => v_call_id,
        p_export_id => p_export_id,
        p_parent_call_id => nvl(v_parent_call_id,p_parent_call_id)
      );      
    end if;
    --DBMS_LOB.FREETEMPORARY(v_clob);
    
  END convert_pocedure_call;
  ------------------------------------------------------------------------------
  
  PROCEDURE convert_execute (
    p_procedure_name  IN   am_tree_procedures.procedure_name%TYPE,
    p_ref_cur         IN   t_refcur,
    p_parent_call_id  IN   am_tree_procedures.parent_call_id%TYPE,
    p_export_id       IN   NUMBER,
    p_scope           IN   VARCHAR2,
    p_begin_line_no   IN   am_lines.line_no%TYPE,
    p_begin_line      IN   am_lines.text%TYPE   
  ) IS
    i                  t_script_rec;
    v_block_lines      CLOB;
    v_begin_line_no    am_lines.line_no%TYPE;
    v_end_line_no      am_lines.line_no%TYPE;
  BEGIN
    v_begin_line_no := p_begin_line_no;   
    v_block_lines := p_begin_line;
    v_end_line_no := p_begin_line_no;
    LOOP
      FETCH p_ref_cur INTO i;
      IF p_ref_cur%notfound OR i.text LIKE 'end;' THEN
        EXIT;
      END IF;
      v_end_line_no := i.line_no;
      v_block_lines := v_block_lines || i.text;
    END LOOP;  
    INSERT INTO am_tree_procedures(
      call_id,
      parent_call_id,
      parent_apex_id,
      export_id,
      procedure_name,
      scope,
      begin_line_no,
      end_line_no,
      sort_value,
      display_value,
      apex_id
    ) 
    VALUES (
      am_call_seq.nextval ,--call_id
      p_parent_call_id, --parent_call_id
      null, --parent_apex_id
      p_export_id, --export_id
      p_procedure_name, --procedure_name
      p_scope, --scope
      v_begin_line_no, --begin_line_no
      v_end_line_no, --end_line_no
      null, --sort_value
      'execute', --display_value
      null --apex_id
    );
    
  END convert_execute;
  ------------------------------------------------------------------------------
  
  PROCEDURE convert_block (
    p_ref_cur         IN   t_refcur,
    p_parent_call_id  IN   am_tree_procedures.parent_call_id%TYPE,
    p_export_id       IN   NUMBER,
    p_block_scope     IN   VARCHAR2
  ) IS
    i                  t_script_rec;
    v_procedure_name   VARCHAR2(300);    
    v_parent_call_id   am_tree_procedures.parent_call_id%TYPE;
  BEGIN

    v_parent_call_id := am_hierarchy.prepare_scope_path(
      p_export_id      => p_export_id,
      p_scope          => p_block_scope,
      p_parent_call_id => p_parent_call_id
    );
    
    LOOP
      FETCH p_ref_cur INTO i;
      IF p_ref_cur%notfound OR i.text LIKE 'end;' THEN
        EXIT;
      END IF;

      IF i.text LIKE 'wwv_flow_api.%' THEN
        v_procedure_name := upper(ltrim(regexp_substr(i.text, '[.][[:alnum:]_]+', 1, 1, 'i'), '.'));
        
        IF i.text LIKE '%;' THEN
          convert_execute (
            p_procedure_name   => v_procedure_name,
            p_ref_cur          => p_ref_cur,
            p_parent_call_id   => v_parent_call_id,
            p_export_id        => p_export_id,
            p_scope            => p_block_scope,
            p_begin_line_no    => i.line_no,
            p_begin_line       => i.text   
          );
            EXIT;
        ELSE
          convert_pocedure_call(
            p_procedure_name   => v_procedure_name,
            p_ref_cur          => p_ref_cur,
            p_parent_call_id   => v_parent_call_id,
            p_export_id        => p_export_id,
            p_block_scope      => p_block_scope,
            p_pos_from         => i.pos_from 
          );
        END IF;
      END IF;
    END LOOP;
  END convert_block;
  ------------------------------------------------------------------------------

  PROCEDURE fill_tree(
    p_export_id IN   am_exports.export_id%TYPE
  )
  IS
    v_comments        VARCHAR2(32676);
    v_block_scope     am_tree_procedures.scope%TYPE;
    c_script_cur      t_refcur;
    i                 t_script_rec;
    v_seq_id          NUMBER;
    dummy_app_properties t_app_properties;
    dummy_template_opt_group t_template_opt_group;
    v_parent_procedure_name_call_e  t_parent_procedure_name_call;
    v_clob             CLOB; 
  BEGIN    
    -- clear pl/sql table
    v_parent_procedure_name_call := t_parent_procedure_name_call();
    for b in (
      select distinct parent_procedure_name
      from am_api_procedures
      where parent_procedure_name is not null
    ) loop
      v_parent_procedure_name_call(b.parent_procedure_name) := NULL;
    end loop;
        
    
    app_properties := dummy_app_properties;
    template_opt_group := dummy_template_opt_group; 
    
    v_seq_id := am_call_seq.nextval;
    INSERT INTO am_tree_procedures (
      call_id,
      parent_call_id,
      export_id,
      procedure_name,
      scope,
      begin_line_no,
      end_line_no,
      sort_value,
      apex_id,
      parent_apex_id    
    ) VALUES (
      v_seq_id, --call_id
      null, --parent_call_id
      p_export_id, --export_id
      'ROOT',  --procedure_name
      null, --scope
      null, --begin_line_no,
      null, --end_line_no,
      null, --sort_value
      null, --apex_id
      null --parent_apex_id
    );

    select content
    into v_clob 
    from am_exports
    where export_id = p_export_id;
    
    OPEN c_script_cur FOR 
    SELECT line_no,
           text,
           pos_from,
           pos_to
    FROM table(am_utils.split_into_lines_pipeline(v_clob));
    
    LOOP
      BEGIN
        FETCH c_script_cur INTO i;
        EXIT WHEN c_script_cur%notfound;
        IF i.text LIKE 'begin%' THEN
          convert_block(
            p_ref_cur         => c_script_cur,
            p_parent_call_id  => v_seq_id,
            p_export_id       => p_export_id,
            p_block_scope     => nvl(v_block_scope,'ROOT') 
          );
          v_comments := NULL;
        ELSIF i.text LIKE 'prompt --%'THEN
          v_block_scope := regexp_replace(i.text,'^prompt --','');        
        ELSE
          v_comments := v_comments || i.text || chr(10);
        END IF;
--      EXCEPTION
--        when others then
--          raise_application_error(-20001,'fill_tree: line_no='||i.line_no||' '||SQLERRM);
      END;
    END LOOP;
    
  END fill_tree;
  

END am_tree;
/

