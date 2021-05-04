--DROP TABLE am_templates_display_points;

CREATE GLOBAL TEMPORARY TABLE am_templates_display_points (
    export_id   NUMBER not null,
    display_name  varchar2(255 CHAR) not null,
    placeholder    varchar2(255 CHAR) not null,    
    template_apex_id number not null,
    entry_point      number,
    distance         number,
    sort_order       number
) ON COMMIT DELETE ROWS;

CREATE UNIQUE INDEX am_templates_display_poi_ui1 ON am_templates_display_points (template_apex_id,placeholder,export_id);

