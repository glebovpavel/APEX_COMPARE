CREATE OR REPLACE PACKAGE BODY am_app AS

 function get_tree_query(
    p_show_changes_only in varchar2,
    p_developer in varchar2,
    p_standard_tracker_flag in varchar2
  ) return varchar2
  is
    v_subquery varchar2(2000);
  begin
   if (p_developer is null and nvl(p_standard_tracker_flag,'A') = 'A') or nvl(p_show_changes_only,'N') = 'N' then
     return  q'[select tp.status, 
             tp."LEVEL", 
             tp.title,
             case 
              when tp.change_flag = 'P' then 'fa fa-exclamation-triangle am-parent'
              when tp.change_flag = 'I' then 'fa fa-plus-square am-insert'
              when tp.change_flag = 'D' then 'fa fa-minus-square am-deleted'        
              when tp.change_flag = 'A' then 'fa fa-folder am_changed'
              else ''
             end icon,
             tp.call_id value, 
             tp.scope as tooltip, 
             tp.link 
      from (
      select case when connect_by_isleaf = 1 then 0
                  when level = 1             then 1
                  else                           -1
             end as status, 
             level, 
             case 
               when display_value is not null then procedure_name||'('||display_value||')' 
               else procedure_name
             end  title, 
             null as icon, 
             call_id, 
             scope, 
             change_flag,
             'javascript:setLeaf('||nvl(begin_line_no,0)||','||nvl(end_line_no,0)||','||call_id||','''||apex_id||''')' as link 
      from (select * from am_tree_procedures
      where export_id = :P100_LEFT_EXPORT_ID 
      ) 
      start with parent_call_id is null
      connect by prior call_id = parent_call_id
      order siblings by to_number(nvl(sort_value,begin_line_no))
      ) tp
      where (change_flag is not null and nvl(:P100_SHOW_CHANGES_ONLY_LEFT,'N')='Y') or nvl(:P100_SHOW_CHANGES_ONLY_LEFT,'N') !='Y'
      ]';  
    else
      if p_developer is not null then
         v_subquery := ' select flow_table_pk
                      from apex_developer_audit_log
                      where application_id = :P310_APP_ID_DESTINATION
                        and developer = :P100_DEVELOPER 
                        and updated between :P100_DATE_FROM and :P100_DATE_TO
                       ';
      end if;
      if p_standard_tracker_flag is not null then
        if v_subquery is not null then 
          v_subquery := '
            INTERSECT
          ';
        end if;  
        v_subquery := v_subquery||q'[ select n002 as apex_id 
        from apex_collections ac left outer join 
            eba_stds_test_validations tv on ( tv.application_id = :P310_APP_ID_DESTINATION AND 
                                              tv.result_identifier = ac.n002 and 
                                              tv.test_id = ac.n001)
        where collection_name = 'ST_TEST_RESULTS'
         and ( nvl(:P100_SHOW_STANDARDS_TREE,'A') = 'A'  
               OR ( :P100_SHOW_STANDARDS_TREE = 'F' AND ( c001 = 'N' AND nvl(tv.false_positive_yn, 'N') != 'Y' ) ) 
               OR ( :P100_SHOW_STANDARDS_TREE = 'P' AND ( c001 = 'Y' OR  nvl(tv.false_positive_yn, 'N')  = 'Y' ) ) 
               OR ( :P100_SHOW_STANDARDS_TREE = 'N' AND ( c001 = 'N' AND nvl(tv.false_positive_yn, 'N')  = 'Y' ) ) 
              ) ]';
      end if;
      return q'[select tp.status, 
             tp."LEVEL", 
             tp.title,
             case 
              when tp.change_flag = 'P' then 'fa fa-exclamation-triangle am-parent'
              when tp.change_flag = 'I' then 'fa fa-plus-square am-insert'
              when tp.change_flag = 'D' then 'fa fa-minus-square am-deleted'        
              when tp.change_flag = 'A' then 'fa fa-folder am_changed'
              else ''
             end icon,
             tp.call_id value, 
             tp.scope as tooltip, 
             tp.link 
      from (
      select case when connect_by_isleaf = 1 then 0
                  when level = 1             then 1
                  else                           -1
             end as status, 
             level, 
             case 
               when display_value is not null then procedure_name||'('||display_value||')' 
               else procedure_name
             end  title, 
             null as icon, 
             call_id, 
             scope, 
             change_flag,
             'javascript:setLeaf('||nvl(begin_line_no,0)||','||nvl(end_line_no,0)||','||call_id||','''||apex_id||''')' as link 
      from ( select * 
             from (select * 
                   from am_tree_procedures
                   where export_id = :P100_LEFT_EXPORT_ID 
                   and ((change_flag is not null and nvl(:P100_SHOW_CHANGES_ONLY_LEFT,'N')='Y') or nvl(:P100_SHOW_CHANGES_ONLY_LEFT,'N') !='Y')
                   )
             connect by prior parent_call_id=call_id
             start with APEX_ID in ( ]'||v_subquery||q'[ ) 
            ) 
      start with parent_call_id is null
      connect by prior call_id = parent_call_id
      order siblings by to_number(nvl(sort_value,begin_line_no))
      ) tp
      ]';
      ----
    end if;  
  end get_tree_query; 
  ------------------------------------------------------------------------------
  
  function b_acc_apex_developer_audit_log
  return boolean
  is
    v_dummy number;
  begin
    EXECUTE IMMEDIATE 
    'select 1 from apex_developer_audit_log where rownum <2'
    INTO v_dummy;
   
    return true; 
  exception
    when others then
      return false;
  end b_acc_apex_developer_audit_log;
  ------------------------------------------------------------------------------
  
  function c_acc_apex_developer_audit_log
  return varchar2
  is
  begin
    if b_acc_apex_developer_audit_log then
      return 'Y';
    else
      return 'N';
    end if;
  end c_acc_apex_developer_audit_log;
  ------------------------------------------------------------------------------
  
  function b_eba_stds_test_validations
  return boolean
  is
    v_dummy number;
  begin
    -- eba_stds_test_validations can be unavaliable
    -- but package should be comaliable
    EXECUTE IMMEDIATE 
    'select 1 from eba_stds_test_validations where rownum <2'
    INTO v_dummy;
   
    return true; 
  exception
    when others then
      return false;
  end b_eba_stds_test_validations;  
  ------------------------------------------------------------------------------
  
  function get_backup_date(p_backup_id in number)
  return date
  is
    v_backup_date date;
  begin
    -- am_app_backups can be unavaliable
    -- but package should be comaliable
    EXECUTE IMMEDIATE
    'select last_updated_on from am_app_backups where id = :BACKUP_ID' into v_backup_date using p_backup_id;
    return v_backup_date;
  --exception
    --when others then
      --return sysdate;
  end get_backup_date;
  ------------------------------------------------------------------------------
  
  function get_source(
    p_call_id am_tree_procedures.call_id%TYPE,
    p_export_id am_exports.export_id%TYPE
  )
  return clob
  is
    v_pos_from am_tree_procedures.pos_from%TYPE;
    v_pos_to   am_tree_procedures.pos_to%TYPE;
    v_clob     clob;
  begin
    select pos_from,
           pos_to  
    into v_pos_from,
         v_pos_to
    from am_tree_procedures
    where call_id = p_call_id
      and export_id = p_export_id;
    
    select dbms_lob.substr(content,v_pos_to - v_pos_from + 1,v_pos_from)
    into v_clob
    from AM_EXPORTS 
    where export_id = p_export_id;
    
    return v_clob;
  exception
    when no_data_found then
      return null;
  end get_source;
  
  
END am_app;
/
