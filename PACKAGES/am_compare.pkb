CREATE OR REPLACE PACKAGE BODY am_compare AS
 
 NULL_DATA constant varchar2(20 char) default '?ÄÖ?Ü&%&%$&%$&%Ö?';
 
 procedure compare_trees(
    p_left_export_id    IN am_exports.export_id%TYPE,
    p_right_export_id   IN am_exports.export_id%TYPE
 ) 
 is
 begin   
    -- insert difference in procedures    
    for a in (
      with l as (
        select ll.*,
               coalesce(to_char(ll.apex_id),path) as compare
        from (
        select tpl.*,
             sys_connect_by_path(nvl(to_char(apex_id),procedure_name),'/') path
          from (select * from am_tree_procedures 
                where export_id = p_left_export_id ) tpl
          start with parent_call_id is null
          connect by prior call_id = parent_call_id
          order siblings by to_number(nvl(sort_value,begin_line_no))
          )ll ),
      r as (
          select rr.*,
                 coalesce(to_char(rr.apex_id),path) as compare
          from (       
          select tpr.*,
                 sys_connect_by_path(nvl(to_char(apex_id),procedure_name),'/') path
          from (select * from am_tree_procedures 
                where export_id = p_right_export_id ) tpr
          start with parent_call_id is null
          connect by prior call_id = parent_call_id
          order siblings by to_number(nvl(sort_value,begin_line_no))
          ) rr )
      select  l.call_id as l_call_id,
              r.call_id as r_call_id,              
              nvl((select min(l.call_id) 
                  from l
                 where l.path = rtrim(regexp_substr(r.path,'^.+\/'),'/')
               ),r.parent_call_id) as parent_call_id,
              nvl(l.parent_apex_id,r.parent_apex_id) as parent_apex_id,
              --nvl(l.export_id,r.export_id) as export_id,
              nvl(l.procedure_name,r.procedure_name) as procedure_name,
              nvl(l.scope,r.scope) as scope,
              nvl(l.begin_line_no,r.begin_line_no) as begin_line_no,
              nvl(l.end_line_no,r.end_line_no) as end_line_no,
              nvl(l.sort_value,r.sort_value) as sort_value,
              nvl(l.display_value,r.display_value) as display_value,
              nvl(l.apex_id,r.apex_id) as apex_id
      from l full outer join r on l.compare = r.compare 
      where l.call_id is null or r.call_id is null
    ) loop
      if a.l_call_id is null then
        insert into am_tree_procedures (
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
          apex_id,
          change_flag
        ) values(
          a.r_call_id,
          a.parent_call_id,
          a.parent_apex_id,
          p_left_export_id,
          a. procedure_name,
          a.scope,
          a.begin_line_no,
          a.end_line_no,
          a.sort_value,
          a.display_value,
          a.apex_id,
          PROCEDURE_NEW
        );
      else
        update am_tree_procedures
        set change_flag = PROCEDURE_DELETED
        where call_id = a.r_call_id
         and export_id = p_left_export_id;
      end if;
    end loop;

    -- mark procedures with different parameters
    update am_tree_procedures
       set change_flag = DIFFERENT_PARAMETERS
     where change_flag is null
       and export_id = p_left_export_id
       and call_id  in (
      select distinct
             nvl(l.call_id,r.call_id) as call_id
      from (
      select pr.call_id,
             pr.apex_id,
             par.parameter_name,
             data_clob,
             data
      from am_tree_procedures pr, 
           am_tree_parameters par  
      where pr.export_id = p_left_export_id
        and par.export_id = p_left_export_id
        and pr.call_id = par.call_id
        and pr.apex_id is not null
      ) l full outer join 
      (
      select pr.call_id,
             pr.apex_id,
             par.parameter_name,
             data_clob,
             data
      from am_tree_procedures pr, 
           am_tree_parameters par  
      where pr.export_id = p_right_export_id
        and par.export_id = p_right_export_id
        and pr.call_id = par.call_id
        and pr.apex_id is not null
      ) r on (l.apex_id = r.apex_id and l.parameter_name = r.parameter_name)
      where (nvl(l.data,NULL_DATA) != nvl(r.data,NULL_DATA)) or 
              dbms_lob.compare(nvl(l.data_clob,'Null'),nvl(r.data_clob,'Null')) = -1
      );

    -- additionally mark all predecessors 
    update am_tree_procedures
    set change_flag = CHILD_HAS_CHANGES
    where change_flag is null
      and export_id = p_left_export_id
      and call_id  in (
        select call_id
        from am_tree_procedures
        where export_id = p_left_export_id
        start with call_id in (select call_id 
             from am_tree_procedures
            where export_id = p_left_export_id
              and change_flag is not null) 
        connect by prior parent_call_id = call_id);
    
    -- delete hanged leafs
    for t in (
    with l as (
      select tpl.*,
             sys_connect_by_path(nvl(to_char(apex_id),procedure_name),'/') path
          from (select * from am_tree_procedures 
                where export_id = p_left_export_id ) tpl
          start with parent_call_id is null
          connect by prior call_id = parent_call_id
          order siblings by to_number(nvl(sort_value,begin_line_no))
          ),
      r as (
          select tpr.*,
                 sys_connect_by_path(nvl(to_char(apex_id),procedure_name),'/') path
          from (select * from am_tree_procedures 
                where export_id = p_right_export_id ) tpr
          start with parent_call_id is null
          connect by prior call_id = parent_call_id
          order siblings by to_number(nvl(sort_value,begin_line_no))
          )
      select  l.call_id as l_call_id,
              r.call_id as r_call_id,  
              l.parent_call_id as l_par_call_id,
              r.parent_call_id as r_par_call_id
      from l full outer join r on l.apex_id = r.apex_id
      where --(l.call_id is null or r.call_id is null)
      l.path != r.path 
    ) 
    loop
      update  am_tree_procedures
      set parent_call_id = t.r_par_call_id
      where export_id = p_left_export_id 
      and call_id = t.l_call_id;

      delete from am_tree_procedures 
      where call_id = t.l_par_call_id
        and export_id = p_left_export_id;   
    end loop;
 end compare_trees;
 
END am_compare;
/
