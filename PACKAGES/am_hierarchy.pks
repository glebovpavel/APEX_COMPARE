create or replace PACKAGE am_hierarchy AS

  function get_parent(
    p_export_id      IN am_exports.export_id%TYPE,
    p_parent_procedure_name IN am_tree_procedures.procedure_name%TYPE,
    p_local_scope    IN am_tree_procedures.scope%TYPE,
    p_scope_par_val  IN am_tree_procedures.procedure_name%TYPE,
    p_parent_call_id IN am_tree_procedures.parent_call_id%TYPE,
    p_parent_apex_id IN am_tree_procedures.apex_id%TYPE    
  ) return am_tree_procedures.call_id%TYPE;
  
  function  prepare_scope_path(
    p_export_id      IN am_exports.export_id%TYPE,
    p_scope          IN am_tree_procedures.scope%TYPE,
    p_parent_call_id IN am_tree_procedures.parent_call_id%TYPE
  ) return am_tree_procedures.call_id%TYPE;
  
  function get_region_display_point(
    p_export_id in am_exports.export_id%TYPE,
    p_placeholder in am_templates_display_points.placeholder%TYPE,      
    p_template_apex_id in am_templates.template_apex_id%TYPE
  ) return varchar2;
  
  function get_parent_region_call_id (
    p_export_id in am_exports.export_id%TYPE,
    p_parent_region_apex_id in am_tree_procedures.parent_apex_id%TYPE
  )  
  return am_tree_procedures.call_id%TYPE;

  procedure align_create_page_procedure(
    p_call_id in am_tree_procedures.call_id%TYPE,
    p_export_id in am_exports.export_id%TYPE,
    p_parent_call_id in am_tree_procedures.call_id%TYPE
  );
END am_hierarchy;
/
