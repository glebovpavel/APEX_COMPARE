create or replace package am_comparsions_api is

   function upload_export (
    p_source in varchar2,
    p_filename   in am_exports.filename%TYPE,
    p_app_id   in number,
    p_public_reports in varchar2,
    p_private_reports in varchar2,
    p_report_subscriptions in varchar2,
    p_translation in varchar2,
    p_comments in varchar2,
    p_original_ids in varchar2,
    p_backup_id in number
  ) return  am_exports.export_id%TYPE;
end am_comparsions_api;
/
