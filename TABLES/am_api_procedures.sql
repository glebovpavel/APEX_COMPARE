CREATE TABLE am_api_procedures (
  procedure_name             VARCHAR2(30 CHAR) primary key,
  parent_parameter_name      VARCHAR2(30 CHAR),
  parent_parameter_default   VARCHAR2(30 CHAR),
  display_parameter_name     VARCHAR2(30 CHAR),
  order_parameter_name       VARCHAR2(30 CHAR),
  parent_parameter_name_alt  VARCHAR2(30 CHAR),
  parent_procedure_name      VARCHAR2(30 CHAR),
  scope                      VARCHAR2(100 CHAR),
  scope_parameter_name       VARCHAR2(30 CHAR)  
);

