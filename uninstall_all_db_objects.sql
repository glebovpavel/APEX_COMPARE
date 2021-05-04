drop package am_api_utils;
drop package am_app;
drop package am_compare;
drop package am_comparsions_api;
drop package am_hierarchy;
drop package am_standard_tracker;
drop package am_tree;
drop package am_utils;

drop table am_api_procedures CASCADE CONSTRAINTS;
drop table am_execution_points CASCADE CONSTRAINTS;
drop table am_exports CASCADE CONSTRAINTS;
drop table am_lines CASCADE CONSTRAINTS;
drop table am_template_opt_group CASCADE CONSTRAINTS;
drop table am_template_options CASCADE CONSTRAINTS;
drop table am_templates CASCADE CONSTRAINTS;
drop table am_templates_display_points CASCADE CONSTRAINTS;
drop table am_themes CASCADE CONSTRAINTS;
drop table am_tree_parameters CASCADE CONSTRAINTS;
drop table am_tree_procedures CASCADE CONSTRAINTS;
drop table am_scope CASCADE CONSTRAINTS;
drop table am_app_backups_dummy;

drop sequence am_export_id_seq;
drop sequence am_call_seq;

drop view am_app_backups;
drop view apex_developer_audit_log;
