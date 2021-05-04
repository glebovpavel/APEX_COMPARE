--DROP TABLE am_lines;
CREATE TABLE am_lines (
  export_id   NUMBER NOT NULL,
  line_no     NUMBER NOT NULL,
  text        VARCHAR2(4000 CHAR),
  CONSTRAINT am_lines_pk  PRIMARY KEY(line_no,export_id)  
  --CONSTRAINT am_lines_fk1  FOREIGN KEY(export_id) REFERENCES am_exports(export_id)
) NOLOGGING;

