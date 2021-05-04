--DROP TABLE am_themes;

CREATE GLOBAL TEMPORARY TABLE am_themes (
    export_id   NUMBER not null,
    theme_id    NUMBER not null,
    default_page_template_id  number,
    default_dialog_template_id  number
) ON COMMIT DELETE ROWS;

CREATE UNIQUE INDEX am_themes_ui1 ON am_themes (theme_id,export_id);

