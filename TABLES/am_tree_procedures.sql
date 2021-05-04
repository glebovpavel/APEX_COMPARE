--drop table am_tree_procedures CASCADE CONSTRAINTS;

CREATE TABLE am_tree_procedures (
  call_id          NUMBER,
  parent_call_id   NUMBER,
  parent_apex_id   NUMBER,
  export_id        NUMBER,
  procedure_name   VARCHAR2(100 CHAR),
  scope            VARCHAR2(500 CHAR),
  begin_line_no    NUMBER,
  end_line_no      NUMBER,
  pos_from         NUMBER,
  pos_to           NUMBER,
  sort_value       VARCHAR2(30 CHAR),
  display_value    VARCHAR2(300 CHAR),
  apex_id          NUMBER,
  change_flag      VARCHAR2(1),
  CONSTRAINT am_tree_procedures_pk  PRIMARY KEY(call_id,export_id)
  --CONSTRAINT am_tree_procedures_fk1  FOREIGN KEY(export_id) REFERENCES am_exports(export_id),
  --CONSTRAINT am_tree_procedures_fk2  FOREIGN KEY(parent_call_id,export_id) REFERENCES am_tree_procedures(call_id,export_id)
) NOLOGGING;
--ORGANIZATION INDEX 

CREATE INDEX AM_TREE_PROCEDURES_I1 ON AM_TREE_PROCEDURES(EXPORT_ID,APEX_ID);
CREATE INDEX AM_TREE_PROCEDURES_I2 ON AM_TREE_PROCEDURES(PARENT_CALL_ID,EXPORT_ID,PROCEDURE_NAME);

create sequence am_call_seq CACHE 1000 NOORDER;

