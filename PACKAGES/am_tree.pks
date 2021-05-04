CREATE OR REPLACE PACKAGE am_tree AS

  --ROOT_PARENT_ID constant number  default -1;  

  TYPE t_refcur IS REF CURSOR;
  TYPE t_script_rec IS RECORD (
    line_no   am_lines.line_no%TYPE,
    text      am_lines.text%TYPE,
    pos_from    NUMBER,
    pos_to      NUMBER
  ); 

  TYPE t_app_properties IS RECORD (
    app_id  number,
    theme_id number,
    page_id number,
    page_mode am_tree_parameters.data%TYPE,
    page_template am_tree_parameters.data%TYPE
  );
  
  TYPE t_debug_info IS RECORD (
    line_no  number
  );
  
  debug_info t_debug_info;
  
  app_properties t_app_properties;
  
  type t_paramets is table of am_tree_parameters.data%type index by am_tree_parameters.parameter_name%TYPE;
  
  type t_clob_paramets is table of am_tree_parameters.data_clob%type index by am_tree_parameters.parameter_name%TYPE;

  type t_template_opt_group is table of number index by varchar2(20);
  
  template_opt_group t_template_opt_group; 
  
  PROCEDURE fill_tree(
    p_export_id IN   am_exports.export_id%TYPE
  );
  
 function get_procedure_name_call_exists(
    p_procedure_name am_tree_procedures.procedure_name%TYPE
  ) return am_tree_procedures.call_id%TYPE;

END am_tree;
/
