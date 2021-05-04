create or replace force view am_app_backups as 
select b.*,blob_content,filename, mime_type  
from apex_200200.wwv_flow_backups$ b,
     apex_200200.wwv_flow_file_objects$ o
where o.id = b.object_id;