create or replace PACKAGE BODY am_utils AS

  --http://mkramar.blogspot.com/2015/09/split-oracle-clob-into-lines-fast-way.html
  ------------------------------------------------------------------------------
  function split_into_lines_pipeline( 
    c IN  CLOB
  ) return t_lines pipelined 
  is
   rez apex_t_varchar2;
   v_pos     number := 0;
  begin
   rez := apex_string.split(c,chr(10));
   for i in 1..rez.count loop
     pipe row(t_line(i,rez(i),v_pos,v_pos + nvl(length(rez(i)),0)));
     v_pos := v_pos + nvl(length(rez(i)),0) + 1;
   end loop;
   
  end split_into_lines_pipeline;
  ------------------------------------------------------------------------------

  FUNCTION get_parameter_name (
    p_text IN VARCHAR2
  ) RETURN VARCHAR2 
  IS
  BEGIN
    RETURN substr(upper(ltrim(regexp_substr(p_text, '[,]?p_[[:alnum:]_]+', 1, 1, 'i'), ',')),1,30);
  END get_parameter_name;
  ------------------------------------------------------------------------------
  
  FUNCTION to_num(
    p_str in varchar2,
    p_line_no in am_lines.line_no%TYPE
  ) return  number
  is
  begin
    return to_number(p_str);
  exception
     when others then
        raise_application_error(-20001,'to_num p_str='||p_str||' at line='||p_line_no||' '||SQLERRM);
  end to_num;
  ------------------------------------------------------------------------------

  function get_parameter(
    p_parameter in am_tree_parameters.parameter_name%TYPE,
    p_parameters in am_tree.t_paramets
  )
  return am_tree_parameters.data%type
  is
  begin
    return p_parameters(p_parameter);
  exception
     when no_data_found then
        return '';
  end get_parameter;  
  ------------------------------------------------------------------------------

  procedure save_template_opt_group(
    p_export_id in am_exports.export_id%TYPE,
    p_theme_id in am_template_opt_group.theme_id%TYPE,
    p_display_name in am_template_opt_group.display_name%TYPE,
    p_template_opt_group_apex_id in am_template_opt_group.template_opt_group_apex_id%TYPE
  )
  is
  begin
    insert into am_template_opt_group (
      export_id,
      theme_id,
      display_name,
      template_opt_group_apex_id
    ) values (
      p_export_id, --export_id,
      p_theme_id, --p_theme_id
      p_display_name,
      p_template_opt_group_apex_id
    );  
  end save_template_opt_group;
  ------------------------------------------------------------------------------  

  procedure save_template_option(
    p_export_id IN am_template_options.export_id%TYPE,
    p_theme_id in am_template_options.theme_id%TYPE,
    p_display_name IN am_template_options.display_name%TYPE,
    p_css_class IN am_template_options.css_class%TYPE,
    p_template_apex_id IN am_template_options.template_apex_id%TYPE,
    p_template_type IN am_template_options.template_type%TYPE,
    p_template_opt_group_apex_id IN am_template_options.template_opt_group_apex_id%TYPE
  )
  is
  begin
    insert into am_template_options (
      export_id,
      theme_id,
      display_name,
      css_class,
      template_apex_id,
      template_type,
      template_opt_group_apex_id
    ) values (
      p_export_id,
      p_theme_id,
      p_display_name,
      p_css_class,
      p_template_apex_id,
      p_template_type,
      p_template_opt_group_apex_id
    );  
  end save_template_option;
  ------------------------------------------------------------------------------

  procedure save_theme(
    p_export_id in am_exports.export_id%TYPE,
    p_theme_id in am_themes.theme_id%TYPE,
    p_default_page_template in am_themes.default_page_template_id%TYPE,
    p_default_dialog_template in am_themes.default_dialog_template_id%TYPE
  )
  is
  begin
    insert into am_themes (
      export_id,
      theme_id,
      default_page_template_id,
      default_dialog_template_id
    ) values (
      p_export_id, --export_id,
      p_theme_id, --p_theme_id
      p_default_page_template,
      p_default_dialog_template
    );  
  end save_theme;
  ------------------------------------------------------------------------------

  procedure save_template(
    p_export_id in am_exports.export_id%TYPE,
    p_template_apex_id in am_templates.template_apex_id%TYPE, 
    p_header  in am_templates.header%TYPE,
    p_box  in am_templates.box%TYPE,
    p_footer  in am_templates.footer%TYPE
  )
  is
  begin
    insert into am_templates (
      export_id,
      template_apex_id, 
      header,
      box,
      footer
    ) values (
      p_export_id,
      p_template_apex_id, 
      p_header,
      p_box,
      p_footer
    );  
  end save_template;  
  ------------------------------------------------------------------------------

  procedure save_templates_display_points(
    p_export_id in am_exports.export_id%TYPE,
    p_display_name in am_templates_display_points.display_name%TYPE,
    p_placeholder in am_templates_display_points.placeholder%TYPE,      
    p_template_apex_id in am_templates.template_apex_id%TYPE
  )
  is
    v_header_distance number;
    v_box_distance number;
    v_footer_distance number; 
    v_entry_point am_templates_display_points.entry_point%TYPE; 
    v_distance am_templates_display_points.distance%TYPE;
  begin    
    select nvl(dbms_lob.instr(header,'#'||p_placeholder||'#'),0) as header_distance,
           nvl(dbms_lob.instr(box,'#'||p_placeholder||'#'),0) as box_distance,
           nvl(dbms_lob.instr(footer,'#'||p_placeholder||'#'),0) as footer_distance
    into v_header_distance,
         v_box_distance,
         v_footer_distance  
    from am_templates
    where export_id = p_export_id
      and template_apex_id = p_template_apex_id;

    if v_header_distance > 0 then 
      v_entry_point := 1;
      v_distance := v_header_distance;
    elsif v_box_distance > 0 then 
      v_entry_point := 2;
      v_distance := v_box_distance;
    elsif v_footer_distance > 0 then
      v_entry_point := 3;
      v_distance := v_footer_distance;
    else
      v_entry_point := null;
      v_distance := null;
    end if;

    insert into am_templates_display_points (
      export_id,
      display_name,
      placeholder,    
      template_apex_id,
      entry_point,
      distance,
      sort_order
    ) values (
      p_export_id,
      p_display_name,
      p_placeholder,    
      p_template_apex_id,
      v_entry_point,
      v_distance,
      1
    );  

    if p_placeholder = 'BODY' then
     for a in 1..3 loop
       insert into am_templates_display_points (
         export_id,
         display_name,
         placeholder,    
         template_apex_id,
         entry_point,
         distance,
         sort_order
        ) values (
          p_export_id,
          'Body '||a,
          'BODY_'||a,    
          p_template_apex_id,
          v_entry_point,
          v_distance + a,
          1
        );
      end loop;  
    end if;

    for i in (
      select placeholder, 
             row_number() over(order by entry_point nulls last, distance nulls last ) as rn 
      from am_templates_display_points
      where export_id = p_export_id
        and template_apex_id = p_template_apex_id) 
    loop
      update am_templates_display_points 
      set sort_order = i.rn 
      where export_id = p_export_id
        and template_apex_id = p_template_apex_id
        and placeholder = i.placeholder;
    end loop;

  end save_templates_display_points;
  ------------------------------------------------------------------------------

  procedure delete_tree_data
  is
  begin
    for i in (
      select export_id 
      from am_exports
      where exp_date < sysdate - 2/24
    ) loop
       DELETE FROM am_lines where export_id = i.export_id;
       DELETE FROM am_tree_parameters where export_id = i.export_id;
       DELETE FROM am_tree_procedures where export_id = i.export_id;
       delete from am_exports where export_id = i.export_id;
    end loop;
  end delete_tree_data;

  ------------------------------------------------------------------------------
  function detect_language(p_str in varchar2)
  return varchar2
  is
   v_str varchar2(100);
  begin
    v_str := UPPER(p_str);
    if instr(v_str,'DECLARE ') > 0 or instr(v_str,'SELECT ') > 0 then
     return 'sql';
    elsif instr(v_str,'VAR ') > 0 or instr(v_str,'==') > 0 then
      return 'javascript';
    elsif instr(v_str,'/>') > 0 then
      return 'javascript';
   else
      return 'plaintext';
   end if;   

  end detect_language;
  ------------------------------------------------------------------------------

  --https://gist.github.com/vlsi/052424856512f80137989c817cb8f046  
  procedure app(v_clob in out nocopy clob, v_vc in out nocopy varchar2, v_app varchar2) is    
  begin
      v_vc := v_vc || v_app;
      exception when VALUE_ERROR then
      if v_clob is null then
        v_clob := v_vc;
      else
        dbms_lob.writeappend(v_clob, length(v_vc), v_vc);
      end if;
      v_vc := v_app;
      v_clob := v_clob || v_vc;
  end;
  ------------------------------------------------------------------------------

  function get_clob_from_lines (
    p_export_id in am_exports.export_id%TYPE,
    p_begin_line_no in am_lines.line_no%TYPE, 
    p_end_line_no in am_lines.line_no%TYPE
  )
  return clob
  is
    v_vc varchar2(32767);
    v_clob clob;
  begin
    for i in (
      select text 
      from am_lines
      where line_no between p_begin_line_no and p_end_line_no
        and export_id = p_export_id
    ) loop
      --app(v_clob,v_vc,i.text);
      v_clob := v_clob||i.text||chr(10); 
    end loop;
    return v_clob || v_vc;
  end get_clob_from_lines;  
  ------------------------------------------------------------------------------

  function get_export_date(
    p_export_id in am_exports.export_id%TYPE
  ) return date
  is
  begin
    for i in (
      select * 
      from am_lines
      where export_id = p_export_id
        and line_no < 100
    ) 
    loop
      if i.text like '--   Date and Time:%' then
        return to_date(replace(i.text,'--   Date and Time:',''),'hh24:mi Day Month dd, yyyy');
      end if;
    end loop;

    return null;
  exception
    when others then
      return null;    
  end get_export_date;
  ------------------------------------------------------------------------------

END am_utils;
/
