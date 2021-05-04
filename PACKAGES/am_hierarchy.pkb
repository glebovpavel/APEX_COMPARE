create or replace PACKAGE BODY am_hierarchy AS
  
  function prepare_scope_path(
    p_export_id      IN am_exports.export_id%TYPE,
    p_scope          IN am_tree_procedures.scope%TYPE,     
    p_parent_call_id IN am_tree_procedures.parent_call_id%TYPE
  ) return am_tree_procedures.call_id%TYPE
  is
    v_call_id      am_tree_procedures.call_id%TYPE;    
    v_call_id_new  am_tree_procedures.call_id%TYPE;
    v_scope        varchar2(500);
  begin
    for i in (
      select level, regexp_substr(p_scope,'[^/]+',1,level) as tree_items
      from dual
      connect by LEVEL <= REGEXP_COUNT(p_scope ,'[/]') + 1
    ) 
    loop
      begin
         v_scope := v_scope||'/'||i.tree_items;
         select call_id
         into v_call_id
         from am_scope
         where scope = v_scope;
       exception
         when no_data_found then
           v_call_id_new := am_call_seq.nextval;
           insert into am_scope(
             call_id,
             procedure_name,
             scope
          )
          values (
            v_call_id_new,
            i.tree_items,
            v_scope
          );   
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
              v_call_id_new ,--call_id
              nvl(v_call_id,p_parent_call_id), --parent_call_id
              null, --parent_apex_id
              p_export_id, --export_id
              i.tree_items, --procedure_name
              null, --scope
              null, --begin_line_no
              null, --end_line_no
              null, --sort_value
              null, --display_value
              null --apex_id
            ); 
           v_call_id := v_call_id_new; 
       end; 
    end loop;
    return v_call_id;
  end prepare_scope_path;
  
  ------------------------------------------------------------------------------
  function prepare_local_scope_path(
    p_export_id      IN am_exports.export_id%TYPE,
    p_local_scope    IN am_api_procedures.scope%TYPE,
    p_parent_call_id IN am_tree_procedures.parent_call_id%TYPE    
  ) return am_tree_procedures.call_id%TYPE 
  is
    v_call_id      am_tree_procedures.call_id%TYPE;    
    v_call_id_dbg      am_tree_procedures.call_id%TYPE;
    v_parent_call_id am_tree_procedures.parent_call_id%TYPE; 
  begin
    v_parent_call_id := p_parent_call_id;
 
    for i in (
      select column_value as single_item
      from table(apex_string.split(p_local_scope,'/'))
      where column_value is not null
    ) 
    loop
      begin
        select (call_id),
               (call_id)
        into v_call_id,
             v_call_id_dbg
        from am_tree_procedures tp
        where export_id = p_export_id
          and parent_call_id = v_parent_call_id
          and procedure_name = ltrim(i.single_item,'0123456789');
/*
       if v_call_id !=  v_call_id_dbg then
         dbms_output.put_line('prepare_local_scope_path , v_parent_call_id='||v_parent_call_id);
       end if;
*/       
        v_parent_call_id := v_call_id;   
       exception
         when no_data_found then
           v_call_id := am_call_seq.nextval;
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
              v_call_id ,--call_id
              v_parent_call_id, --parent_call_id
              null, --parent_apex_id
              p_export_id, --export_id
              ltrim(i.single_item,'0123456789'), --procedure_name
              null, --scope
              null, --begin_line_no
              null, --end_line_no
              regexp_substr(i.single_item,'^\d+'), --sort_value
              null, --display_value
              null --apex_id
            ); 
           v_parent_call_id := v_call_id;
           
       when others then         
         --dbms_output.put_line('parent_call_id='||p_parent_call_id||' scope='||p_local_scope||' line='||am_tree.debug_info.line_no||' v_parent_call_id='||v_parent_call_id||' i.single_item='||i.single_item||' '||SQLERRM);
         raise_application_error(-20001,'parent_call_id='||p_parent_call_id||' scope='||p_local_scope||' line='||am_tree.debug_info.line_no||' '||SQLERRM);         
       end; 
    end loop;
    return v_call_id;
  exception
    when others then
      raise_application_error(-20001,'parent_call_id='||p_parent_call_id||' '||SQLERRM);
  end prepare_local_scope_path;  
  ------------------------------------------------------------------------------
  
  function get_execute_point(
    p_execution_point IN am_execution_points.execution_point%TYPE
  )
  return am_execution_points.scope%TYPE
  is   
    v_scope am_execution_points.scope%TYPE;
  begin
    select scope
    into v_scope
    from am_execution_points
    where execution_point = p_execution_point;
    
    return v_scope;
  exception
     when no_data_found then
       return null;
  end get_execute_point;  
  ------------------------------------------------------------------------------
  
  function get_default_parent_call_id (
    p_export_id      IN am_exports.export_id%TYPE,
    p_procedure_name IN am_tree_procedures.procedure_name%TYPE
  )  
  return am_tree_procedures.call_id%TYPE
  is
    v_call_id  am_tree_procedures.call_id%TYPE;
  begin
    v_call_id := am_tree.get_procedure_name_call_exists(p_procedure_name);
    if v_call_id is not null then
      return v_call_id;
    end if;
  
    select call_id
    into v_call_id
    from (       
    select call_id,
           begin_line_no
    from am_tree_procedures
    where export_id = p_export_id
      and procedure_name = p_procedure_name
    order by begin_line_no desc
    ) where rownum < 2;
    
    return v_call_id;
  exception
    when no_data_found then
        return null;
  end get_default_parent_call_id;
  ------------------------------------------------------------------------------
  
  function get_parent_call_id (
    p_export_id      IN am_exports.export_id%TYPE,
    p_parent_apex_id IN am_tree_procedures.apex_id%TYPE
  )  
  return am_tree_procedures.call_id%TYPE
  is
    v_call_id  am_tree_procedures.call_id%TYPE;
  begin
    select call_id
    into v_call_id
    from (       
    select call_id,
           begin_line_no
    from am_tree_procedures
    where export_id = p_export_id
      and apex_id = p_parent_apex_id
    order by begin_line_no desc
    ) where rownum < 2;
    
    return v_call_id;
  exception
    when no_data_found then
        return null;
  end get_parent_call_id;
  ------------------------------------------------------------------------------
  
  function get_parent(
    p_export_id      IN am_exports.export_id%TYPE,
    p_parent_procedure_name IN am_tree_procedures.procedure_name%TYPE,
    p_local_scope    IN am_tree_procedures.scope%TYPE,
    p_scope_par_val  IN am_tree_procedures.procedure_name%TYPE,  
    p_parent_call_id IN am_tree_procedures.parent_call_id%TYPE,
    p_parent_apex_id IN am_tree_procedures.apex_id%TYPE    
  ) return am_tree_procedures.call_id%TYPE
  is
    v_call_id  am_tree_procedures.call_id%TYPE;
    v_apex_id  am_tree_procedures.apex_id%TYPE;
    v_scope_sum varchar2(201 CHAR); 
  begin
    if p_parent_apex_id is not null then
    v_call_id := get_parent_call_id (
      p_export_id      => p_export_id,
      p_parent_apex_id => p_parent_apex_id
    );
    end if;
    if v_call_id is null and p_parent_procedure_name is not null then 
      v_call_id := get_default_parent_call_id (
        p_export_id      => p_export_id,
        p_procedure_name => p_parent_procedure_name
      );
    end if;  
    v_call_id := nvl(v_call_id,p_parent_call_id);
    
    if p_local_scope = '#BUTTONS#' then
      if p_scope_par_val = 'BODY' then
        v_scope_sum := '1Items';
      else
        v_scope_sum := '2Region Buttons';
      end if;
    elsif p_local_scope = '#PROCESSES#' then
      v_scope_sum := get_execute_point(
        p_execution_point => p_scope_par_val
      );
      v_scope_sum := nvl(v_scope_sum,p_scope_par_val)||'/'||'2Processes';
    elsif p_local_scope = '#COMPUTATIONS#' then
      v_scope_sum := get_execute_point(
        p_execution_point => nvl(p_scope_par_val,'AFTER_SUBMIT')
      );
      v_scope_sum := nvl(v_scope_sum,p_scope_par_val)||'/'||'3Computations';
    elsif p_local_scope = '#BRANCHES#' then
      v_scope_sum := get_execute_point(
        p_execution_point => p_scope_par_val
      );
      v_scope_sum := nvl(v_scope_sum,p_scope_par_val)||'/'||'1Branches';
    elsif p_local_scope = '#REGIONS#' then
      v_scope_sum := get_execute_point(
        p_execution_point => p_scope_par_val
      );
      v_scope_sum := nvl(v_scope_sum,'1Rendering/2Regions/'||p_scope_par_val);
    elsif p_scope_par_val is not null or p_local_scope is not null then 
      v_scope_sum := ltrim(rtrim(p_local_scope||'/'||p_scope_par_val,'/'),'/');
    end if;
    
    if v_scope_sum is not null then 
      v_call_id := prepare_local_scope_path(
        p_export_id      => p_export_id,
        p_local_scope    => v_scope_sum,
        p_parent_call_id => v_call_id
      );
    end if;
    
    return v_call_id;    
  end get_parent;  
  ------------------------------------------------------------------------------
  
  function get_region_display_point(
    p_export_id in am_exports.export_id%TYPE,
    p_placeholder in am_templates_display_points.placeholder%TYPE,      
    p_template_apex_id in am_templates.template_apex_id%TYPE
  ) return varchar2 
  is
    v_display_point varchar2(260 CHAR);
    v_placeholder am_templates_display_points.placeholder%TYPE;
  begin
    select sort_order||display_name
    into v_display_point
    from am_templates_display_points
    where export_id = p_export_id
      and template_apex_id = p_template_apex_id
      and placeholder = p_placeholder;
    
    return v_display_point;
  exception
     when no_data_found then
        begin 
          select scope
          into v_display_point
          from am_execution_points
          where execution_point = p_placeholder;
          
          return v_display_point;
        exception
          when no_data_found then
            return 'Invalid Position [Not Rendered]';     
        end;
  end get_region_display_point;
  ------------------------------------------------------------------------------
  
  function get_parent_region_call_id (
    p_export_id in am_exports.export_id%TYPE,
    p_parent_region_apex_id in am_tree_procedures.parent_apex_id%TYPE
  )  
  return am_tree_procedures.call_id%TYPE
  is
    v_call_id  am_tree_procedures.call_id%TYPE;
  begin
    select call_id 
    into v_call_id
    from am_tree_procedures
    where export_id = p_export_id
      and apex_id = p_parent_region_apex_id;
  
    return v_call_id;
  end get_parent_region_call_id;
  ------------------------------------------------------------------------------
  
  procedure align_create_page_procedure(
    p_call_id in am_tree_procedures.call_id%TYPE,
    p_export_id in am_exports.export_id%TYPE,
    p_parent_call_id in am_tree_procedures.call_id%TYPE
  )
  is
  begin
    update am_tree_parameters
    set call_id = p_parent_call_id
    where call_id = p_call_id
      and export_id = p_export_id;
    
    update am_tree_procedures
    set display_value = (select display_value 
                         from am_tree_procedures
                         where call_id = p_call_id
                           and export_id = p_export_id
                        )
    where call_id = p_parent_call_id
      and export_id = p_export_id;                    
    
    delete from am_tree_procedures
    where call_id = p_call_id
      and export_id = p_export_id;
  --exception
  --   when  others then
  --      raise_application_error(-20001,'p_call_id='||p_call_id||' p_parent_call_id='||p_parent_call_id);
  end align_create_page_procedure;  

END am_hierarchy;
/
