# APEX_COMPARE
Compare APEX Applications

#Installation instructions
1. Install "Application Standards Tracker" - build-in APEX packaged application.
2. Install required DB objects using install_all_db_objects.sql
3. To have access to the APEX Application backups and history ASK DBA to install
* VIEWS\am_app_backups.sql
* VIEWS\am_developer_audit_log.sql
4. Install Application APEX_APP\application.sql
5. To enable Code Comparison open APEX Compare in APEX Developer
* Go to the \Shared Components\Plug-ins\APEX-VS-Monaco-Editor
* In "Files" - section upload \APEX_APP\plugin_files.zip
6. Done! 

Without step 3 true tables from APEX dictionary would be replaced by dummy tables without info about change history or backups.
If I integrate all JS files into plugin, step 5 isn’t required but application would 50+Mb because of encoding.