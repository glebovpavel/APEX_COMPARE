CREATE TABLE am_exports (
  export_id     NUMBER PRIMARY KEY,
  filename      VARCHAR2(1000 char),
  content       CLOB,
  exp_date      DATE
);

create sequence am_export_id_seq;


