CREATE OR REPLACE
PACKAGE BODY AM_COMPARSIONS_API AS
  
  function to_bool(p_val varchar2)
  return boolean
  is
  begin
    if p_val= 'Y' then
      return true;
    else
      return false;
    end if;
  end to_bool;
  ------------------------------------------------------------------------------

  function add_application_from_file(    
    p_filename  in am_exports.filename%TYPE
  )
  return am_exports.export_id%TYPE
  is
    v_export_id  am_exports.export_id%TYPE;
    v_clob   clob;
    v_filename apex_application_temp_files.filename%TYPE;
  begin
    v_export_id  := am_export_id_seq.nextval;
  
    select filename,
           blob_content
    into   v_filename,
           v_clob
    from apex_application_temp_files
    where application_id = v('APP_ID')
      and name = p_filename;  
    
    
    insert into am_exports(
      export_id,
      filename,
      content,
      exp_date
    ) values (
      v_export_id,
      v_filename,
      v_clob,
      sysdate
    ); 
    
    if SQL%ROWCOUNT != 1 then
      raise_application_error(-20001,'File not found '||p_filename);
    end if;
    
    --am_utils.split_into_lines(v_export_id,v_clob);
    
    return   v_export_id;
  end add_application_from_file;  
  ------------------------------------------------------------------------------

  function add_application_from_backup(    
    p_backup_id in number
  )
  return am_exports.export_id%TYPE
  is
    v_export_id  am_exports.export_id%TYPE;
    v_clob   clob;
    v_filename apex_application_temp_files.filename%TYPE;
    v_mime_type apex_application_temp_files.mime_type%TYPE;
  begin
    v_export_id  := am_export_id_seq.nextval;
  
    select filename,
           APEX_ZIP.GET_FILE_CONTENT(
             p_zipped_blob => blob_content,
             p_file_name   => replace(filename,'.zip','.sql')
           ) as blob_content,
           mime_type
    into   v_filename,
           v_clob,
           v_mime_type
    from am_app_backups
    where id = p_backup_id;  
    
    insert into am_exports(
      export_id,
      filename,
      content,
      exp_date
    ) values (
      v_export_id,
      v_filename,
      v_clob,
      sysdate
    ); 
    
    --am_utils.split_into_lines(v_export_id,v_clob);
    
    return   v_export_id;
  end add_application_from_backup;
  ------------------------------------------------------------------------------
  
  function add_application_from_db(
    p_app_id   in number,
    p_public_reports in boolean,
    p_private_reports in boolean,
    p_report_subscriptions in boolean,
    p_translation in boolean,
    p_comments in boolean,
    p_original_ids in boolean
  ) 
  return am_exports.export_id%TYPE
  is
    v_export_id  am_exports.export_id%TYPE;
    v_files      apex_t_export_files;
  begin
    v_export_id  := am_export_id_seq.nextval;
    v_files := apex_export.get_application(
      p_application_id => p_app_id,
      p_with_date => true,
      p_with_ir_public_reports => p_public_reports,
      p_with_ir_private_reports => p_private_reports,
      p_with_ir_notifications => p_report_subscriptions,
      p_with_translations => p_translation,
      p_with_original_ids => p_original_ids,
      p_with_comments => p_comments
    );
    insert into am_exports(
      export_id,
      filename,
      content,
      exp_date
    ) values (
      v_export_id,
      v_files(1).name,
      v_files(1).contents,
      sysdate    
    ); 
  
    --am_utils.split_into_lines(v_export_id,v_files(1).contents);
    
    return v_export_id;
  end add_application_from_db;
  ------------------------------------------------------------------------------
  
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
  ) return  am_exports.export_id%TYPE
  is
    v_export_id  am_exports.export_id%TYPE;
  begin
    if p_source = 'F' then
       return add_application_from_file(    
         p_filename => p_filename
       );  
    elsif p_source = 'B' then
      return add_application_from_backup(    
        p_backup_id => p_backup_id
      );
    else
       return add_application_from_db(
         p_app_id   => p_app_id,
         p_public_reports => to_bool(p_public_reports),
         p_private_reports => to_bool(p_private_reports),
         p_report_subscriptions => to_bool(p_report_subscriptions),
         p_translation => to_bool(p_translation),
         p_comments => to_bool(p_comments),
         p_original_ids => to_bool(p_original_ids) 
       );      
     end if;
  end upload_export;
END am_COMPARSIONS_API;
/
