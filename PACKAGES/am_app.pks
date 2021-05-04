CREATE OR REPLACE PACKAGE am_app AS

  function get_tree_query(
    p_show_changes_only in varchar2,
    p_developer in varchar2,
    p_standard_tracker_flag in varchar2
  ) return varchar2;
  
  function b_acc_apex_developer_audit_log
  return boolean;
  
  function c_acc_apex_developer_audit_log
  return varchar2;
  
  function b_eba_stds_test_validations
  return boolean;
  
  function get_backup_date(p_backup_id in number)
  return date;

  function get_source(
    p_call_id am_tree_procedures.call_id%TYPE,
    p_export_id am_exports.export_id%TYPE
  )
  return clob;

END am_app;
/
