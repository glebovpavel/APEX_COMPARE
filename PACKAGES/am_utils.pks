CREATE OR REPLACE PACKAGE am_utils AS

  type t_line is record (
   line_no     NUMBER,
   text        VARCHAR2(4000 CHAR),
   pos_from    NUMBER,
   pos_to      NUMBER
  );

  type t_lines is table of t_line;

  function split_into_lines_pipeline( 
    c IN  CLOB
  ) return t_lines pipelined;
  
  FUNCTION get_parameter_name (
    p_text IN VARCHAR2
  ) RETURN VARCHAR2; 

  FUNCTION to_num(
    p_str in varchar2,
    p_line_no in am_lines.line_no%TYPE
  ) return  number;

  function get_parameter(
    p_parameter in am_tree_parameters.parameter_name%TYPE,
    p_parameters in am_tree.t_paramets
  )
  return am_tree_parameters.data%type;
  
  procedure save_template_opt_group(
    p_export_id in am_exports.export_id%TYPE,
    p_theme_id in am_template_opt_group.theme_id%TYPE,
    p_display_name in am_template_opt_group.display_name%TYPE,
    p_template_opt_group_apex_id in am_template_opt_group.template_opt_group_apex_id%TYPE
  );
  
  procedure save_template_option(
    p_export_id IN am_template_options.export_id%TYPE,
    p_theme_id in am_template_options.theme_id%TYPE,
    p_display_name IN am_template_options.display_name%TYPE,
    p_css_class IN am_template_options.css_class%TYPE,
    p_template_apex_id IN am_template_options.template_apex_id%TYPE,
    p_template_type IN am_template_options.template_type%TYPE,
    p_template_opt_group_apex_id IN am_template_options.template_opt_group_apex_id%TYPE
  );
  
  procedure save_theme(
    p_export_id in am_exports.export_id%TYPE,
    p_theme_id in am_themes.theme_id%TYPE,
    p_default_page_template in am_themes.default_page_template_id%TYPE,
    p_default_dialog_template in am_themes.default_dialog_template_id%TYPE
  );
  
  procedure save_template(
    p_export_id in am_exports.export_id%TYPE,
    p_template_apex_id in am_templates.template_apex_id%TYPE, 
    p_header  in am_templates.header%TYPE,
    p_box  in am_templates.box%TYPE,
    p_footer  in am_templates.footer%TYPE
  );
  
  procedure save_templates_display_points(
    p_export_id in am_exports.export_id%TYPE,
    p_display_name in am_templates_display_points.display_name%TYPE,
    p_placeholder in am_templates_display_points.placeholder%TYPE,      
    p_template_apex_id in am_templates.template_apex_id%TYPE
  );
   
   procedure delete_tree_data;   
   
   function detect_language(p_str in varchar2)
   return varchar2;
   
   function get_clob_from_lines (
    p_export_id in am_exports.export_id%TYPE,
    p_begin_line_no in am_lines.line_no%TYPE, 
    p_end_line_no in am_lines.line_no%TYPE
  )
  return clob;
  
  
  function get_export_date(
    p_export_id in am_exports.export_id%TYPE
  ) return date;


  
END am_utils;
/
