--DROP TABLE am_tree_parameters;

CREATE TABLE am_tree_parameters (
  call_id          NUMBER,
  export_id        NUMBER,
  parameter_name   VARCHAR2(30 CHAR),
  data_clob        CLOB,
  data             VARCHAR2(4000),
  display_data     VARCHAR2(300 char),
  begin_line_no    NUMBER,
  end_line_no      NUMBER,
  parameter_type   VARCHAR2(1 CHAR),
  CONSTRAINT am_tree_parameters_pf  PRIMARY KEY(call_id,export_id,parameter_name)
  --CONSTRAINT am_tree_parameters_fk1  FOREIGN KEY(call_id,export_id) REFERENCES am_tree_procedures(call_id,export_id) DEFERRABLE INITIALLY DEFERRED
)  NOLOGGING;
--ORGANIZATION INDEX


