CREATE GLOBAL TEMPORARY TABLE am_scope (
 call_id          NUMBER,
 procedure_name   VARCHAR2(100 CHAR),
 scope            VARCHAR2(500 CHAR)
) ON COMMIT DELETE ROWS;