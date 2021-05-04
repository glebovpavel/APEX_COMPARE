--DROP TABLE am_templates;

CREATE GLOBAL TEMPORARY TABLE am_templates (
    export_id   NUMBER not null,
    template_apex_id number not null, 
    header clob,
    box clob,
    footer clob
) ON COMMIT DELETE ROWS;

CREATE UNIQUE INDEX am_templates_ui1 ON am_templates (template_apex_id,export_id);

