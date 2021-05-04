CREATE OR REPLACE PACKAGE am_api_utils AS

  PROCEDURE fill_api_procedures_table;
  
  FUNCTION get_apex_schema return varchar2;
  
END am_api_utils;
/
