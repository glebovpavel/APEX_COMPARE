--DROP TABLE am_template_options;

CREATE GLOBAL TEMPORARY TABLE am_template_options (
    export_id   NUMBER not null,
    theme_id    NUMBER not null,
    display_name  varchar2(30 CHAR) not null,
    css_class     varchar2(255 CHAR) not null,
    template_apex_id number,
    template_type varchar2(255 CHAR) not null,
    template_opt_group_apex_id number
) ON COMMIT DELETE ROWS;

CREATE INDEX am_template_options_ui1 ON am_template_options (template_opt_group_apex_id,export_id);


