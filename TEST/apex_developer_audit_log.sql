drop table apex_developer_audit_log;

create table apex_developer_audit_log (
  developer varchar2(100),
  updated date,
  audit_action varchar2(1),
  flow_table_pk number
)