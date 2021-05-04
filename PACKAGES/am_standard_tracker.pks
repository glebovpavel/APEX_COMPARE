CREATE OR REPLACE PACKAGE  am_standard_tracker AS

  PROCEDURE prepare_results (
    p_application_id     IN   NUMBER
    --p_apx_bldr_session   IN   VARCHAR2,
  );  
  
  function get_report(
    p_apex_id in number, 
    p_application_id in number,
    p_showonly in varchar2
  )
  return clob;
  
END am_standard_tracker;
/
