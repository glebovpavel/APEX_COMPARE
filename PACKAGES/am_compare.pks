CREATE OR REPLACE PACKAGE am_compare AS

  PROCEDURE_DELETED constant char(1) default 'D';
  PROCEDURE_NEW constant char(1) default 'I';
  CHILD_HAS_CHANGES constant char(1) default 'A';
  DIFFERENT_PARAMETERS constant char(1) default 'P';
  

  procedure compare_trees(
    p_left_export_id    IN am_exports.export_id%TYPE,
    p_right_export_id    IN am_exports.export_id%TYPE
  ); 


END am_compare;
/
