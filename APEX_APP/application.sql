prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_200200 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>1047331805647092
,p_default_application_id=>10111
,p_default_id_offset=>13271888102796087
,p_default_owner=>'CRM_QA'
);
end;
/
 
prompt APPLICATION 10111 - APEX COMPARE
--
-- Application Export:
--   Application:     10111
--   Name:            APEX COMPARE
--   Date and Time:   10:29 Wednesday May 5, 2021
--   Exported By:     PAVEL
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                      9
--       Items:                   46
--       Computations:             4
--       Validations:              4
--       Processes:                7
--       Regions:                 21
--       Buttons:                 14
--       Dynamic Actions:         16
--     Shared Components:
--       Logic:
--       Navigation:
--         Lists:                  3
--         Breadcrumbs:            1
--       Security:
--         Authentication:         1
--         Authorization:          3
--       User Interface:
--         Themes:                 1
--         Templates:
--           Page:                10
--           Region:              17
--           Label:                7
--           List:                13
--           Popup LOV:            1
--           Calendar:             1
--           Breadcrumb:           1
--           Button:               3
--           Report:              11
--         LOVs:                   4
--         Shortcuts:              1
--         Plug-ins:               2
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         20.2.0.00.20
--   Instance ID:     63123356010078
--

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'CRM_QA')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'APEX COMPARE')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'APEX-MERGE')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'E09F742DAF6A3B0B5689A0CEDEEF49B34D72214E3A9887A10CD74E6A0F862B9B'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'19.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DD-MON-YYYY HH24:MI:SS'
,p_date_time_format=>'DD-MON-YYYY HH24:MI:SS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>'Application created from create application wizard 2020.12.11.'
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(32611017229653863)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'APEX Compare'
,p_app_builder_icon_name=>'app-icon.svg'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T:O:W'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'APEX MERGE'
,p_last_updated_by=>'PAVEL'
,p_last_upd_yyyymmddhh24miss=>'20210505102943'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>3
,p_ui_type_name => null
,p_print_server_type=>'NATIVE'
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_menu
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(32611854534653869)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(35005318563050231)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Wizard'
,p_list_item_link_target=>'f?p=&APP_ID.:300:&SESSION.::&DEBUG.:RP,300,310,320:::'
,p_list_item_icon=>'fa-rocket'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_bar
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(32751260605654073)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(32762910255654191)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(32763472870654191)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(32762910255654191)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(32763798081654192)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_api.id(32762910255654191)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/wizard_progress_list
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(40766725686276409)
,p_name=>'Wizard Progress List'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(40767691037276413)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Source'
,p_list_item_link_target=>'f?p=&APP_ID.:300:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(40772418511276420)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Destination'
,p_list_item_link_target=>'f?p=&APP_ID.:310:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/files/app_icon_svg
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '3C73766720786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667222076696577426F783D22302030203634203634222077696474683D22363422206865696768743D223634223E3C726563742077696474683D2231303025';
wwv_flow_api.g_varchar2_table(2) := '22206865696768743D2231303025222066696C6C3D222338314242354622202F3E3C67206F7061636974793D222E32223E3C7061746820643D224D333220323661322E3520322E3520302031203020322E3520322E3541322E35303320322E3530332030';
wwv_flow_api.g_varchar2_table(3) := '203020302033322032367A6D30203461312E3520312E3520302031203120312E352D312E3541312E35303220312E3530322030203020312033322033307A222F3E3C7061746820643D224D34322E3533362033362E3832386C2D322E3637332D322E3637';
wwv_flow_api.g_varchar2_table(4) := '324131382E3937332031382E39373320302030203020343020333263302D352E3835352D322E3732332D31312E3439332D372E3636382D31352E383734612E352E352030203020302D2E36363420304332362E3732332032302E3530372032342032362E';
wwv_flow_api.g_varchar2_table(5) := '3134352032342033326131382E3937332031382E393733203020302030202E31333720322E3135366C2D322E36373320322E36373341342E39363720342E3936372030203020302032302034302E3336345634372E35612E352E35203020302030202E35';
wwv_flow_api.g_varchar2_table(6) := '2E3568312E30373561332E30303220332E30303220302030203020312E3935322D2E3732326C342E332D332E363835632E3431312E3538322E38343720312E31353520312E33323220312E37313261322E30303120322E30303120302030203020312E35';
wwv_flow_api.g_varchar2_table(7) := '32372E363935682E38323476312E35612E352E3520302030203020312030563436682E38323461322E30303120322E30303120302030203020312E3532372D2E3639352032332E37382032332E373820302030203020312E3332332D312E3731326C342E';
wwv_flow_api.g_varchar2_table(8) := '32393820332E36383461332E30303220332E30303220302030203020312E3935332E3732334834332E35612E352E35203020302030202E352D2E35762D372E31333661342E393720342E39372030203020302D312E3436342D332E3533367A4D33322031';
wwv_flow_api.g_varchar2_table(9) := '372E3137334132322E3839372032322E3839372030203020312033362E363237203233682D392E3235344132322E3839372032322E3839372030203020312033322031372E3137337A4D32322E3837362034362E3532613220322030203020312D312E33';
wwv_flow_api.g_varchar2_table(10) := '2E343831483231762D362E36333661332E39373320332E39373320302030203120312E3137312D322E3832386C322E31342D322E31346132302E3330312032302E33303120302030203020322E39353920372E3335377A6D31312E3231342D312E383633';
wwv_flow_api.g_varchar2_table(11) := '61312E30313420312E3031342030203020312D2E3736362E3334344833322E35762D392E35612E352E352030203020302D312030563435682D2E38323461312E30313420312E3031342030203020312D2E3736362D2E3334344131392E342031392E3420';
wwv_flow_api.g_varchar2_table(12) := '30203020312032352033326131382E3434362031382E34343620302030203120312E3835382D386831302E3238344131382E3434362031382E3434362030203020312033392033326131392E342031392E342030203020312D342E39312031322E363536';
wwv_flow_api.g_varchar2_table(13) := '7A4D3433203437682D2E353735613220322030203020312D312E3330322D2E3438326C2D342E3339332D332E3736356132302E332032302E3320302030203020322E3935382D372E3335386C322E313420322E313441332E39373520332E393735203020';
wwv_flow_api.g_varchar2_table(14) := '3020312034332034302E3336347A222F3E3C2F673E3C7061746820643D224D33322031372E3137334132322E3839372032322E3839372030203020312033362E363237203233682D392E3235344132322E3839372032322E383937203020302031203332';
wwv_flow_api.g_varchar2_table(15) := '2031372E3137337A4D32322E3837362034362E3532613220322030203020312D312E332E343831483231762D362E36333661332E39373320332E39373320302030203120312E3137312D322E3832386C322E31342D322E31346132302E3330312032302E';
wwv_flow_api.g_varchar2_table(16) := '33303120302030203020322E39353920372E3335377A4D3433203437682D2E353735613220322030203020312D312E3330322D2E3438326C2D342E3339332D332E3736356132302E332032302E3320302030203020322E3935382D372E3335386C322E31';
wwv_flow_api.g_varchar2_table(17) := '3420322E313441332E39373520332E3937352030203020312034332034302E3336347A222066696C6C3D222366636662666122206F7061636974793D222E34222F3E3C7061746820643D224D33372E3134322032344832362E3835384131382E34343620';
wwv_flow_api.g_varchar2_table(18) := '31382E3434362030203020302032352033326131392E342031392E3420302030203020342E39312031322E36353620312E30313420312E303134203020302030202E3736362E333434682E383234762D392E35612E352E35203020302031203120305634';
wwv_flow_api.g_varchar2_table(19) := '35682E38323461312E30313420312E303134203020302030202E3736362D2E3334344131392E342031392E342030203020302033392033326131382E3434362031382E3434362030203020302D312E3835382D387A4D333220333161322E3520322E3520';
wwv_flow_api.g_varchar2_table(20) := '302031203120322E352D322E3541322E35303320322E3530332030203020312033322033317A222066696C6C3D222366666622206F7061636974793D222E3935222F3E3C7061746820643D224D333220333061312E3520312E3520302031203120312E35';
wwv_flow_api.g_varchar2_table(21) := '2D312E3541312E35303220312E3530322030203020312033322033307A222066696C6C3D222366636662666122206F7061636974793D222E36222F3E3C2F7376673E';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(32752518370654125)
,p_file_name=>'app-icon.svg'
,p_mime_type=>'image/svg+xml'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/app_icon_css
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E6170702D69636F6E207B0A202020206261636B67726F756E642D696D6167653A2075726C286170702D69636F6E2E737667293B0A202020206261636B67726F756E642D7265706561743A206E6F2D7265706561743B0A202020206261636B67726F756E';
wwv_flow_api.g_varchar2_table(2) := '642D73697A653A20636F7665723B0A202020206261636B67726F756E642D706F736974696F6E3A203530253B0A202020206261636B67726F756E642D636F6C6F723A20233831424235463B0A7D';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(32752878217654130)
,p_file_name=>'app-icon.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(32608605863653857)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(32608979144653859)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(32609235933653859)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(32609503833653860)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(32609818315653860)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'modern'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(32610159098653860)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_RICH_TEXT_EDITOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(32610443160653860)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attribute_01=>'fa-star'
,p_attribute_04=>'#VALUE#'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(32610724457653860)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH_CB'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(32754126606654131)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return true;'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/has_acess_to_apex_developer_audit_log
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(45787980749205252)
,p_name=>'Has acess to apex_developer_audit_log'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return am_app.b_acc_apex_developer_audit_log;'
,p_error_message=>'No access to apex_developer_audit_log'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/has_access_to_b_eba_stds_test_validations
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(45788697893332158)
,p_name=>'Has access to b_eba_stds_test_validations'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return am_app.b_eba_stds_test_validations;'
,p_error_message=>'No access to apex_developer_audit_log'
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/login_remember_username
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(32756605899654154)
,p_lov_name=>'LOGIN_REMEMBER_USERNAME'
,p_lov_query=>'.'||wwv_flow_api.id(32756605899654154)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(32757018494654156)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Remember username'
,p_lov_return_value=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/lovs/lov_applications
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(40792139430374901)
,p_lov_name=>'LOV_APPLICATIONS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select application_id,',
'       application_id as app_id,',
'       application_name',
'from apex_applications',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'APPLICATION_ID'
,p_display_column_name=>'APPLICATION_NAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(40792669612382324)
,p_query_column_name=>'APPLICATION_ID'
,p_display_sequence=>10
,p_data_type=>'NUMBER'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(40793085303382325)
,p_query_column_name=>'APP_ID'
,p_heading=>'ID'
,p_display_sequence=>20
,p_data_type=>'NUMBER'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(40793404608382325)
,p_query_column_name=>'APPLICATION_NAME'
,p_heading=>'Application Name'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
end;
/
prompt --application/shared_components/user_interface/lovs/lov_languages
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(40753696564152529)
,p_lov_name=>'LOV_LANGUAGES'
,p_lov_query=>'.'||wwv_flow_api.id(40753696564152529)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(40754064121152531)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'SQL'
,p_lov_return_value=>'sql'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(40754419571152532)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'JavaScript'
,p_lov_return_value=>'javascript'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(40754849976152533)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Plain Text'
,p_lov_return_value=>'plaintext'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(40755191630152533)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'HTML'
,p_lov_return_value=>'html'
);
end;
/
prompt --application/shared_components/user_interface/lovs/lov_sources
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(47193978355588142)
,p_lov_name=>'LOV_SOURCES'
,p_lov_query=>'.'||wwv_flow_api.id(47193978355588142)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(47194238155588143)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'From File'
,p_lov_return_value=>'F'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(47194589807588143)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'From Database'
,p_lov_return_value=>'D'
,p_lov_disp_cond_type=>'CURRENT_PAGE_NOT_EQUAL_CONDITION'
,p_lov_disp_cond=>'300'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(47195138534592167)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'From Backup'
,p_lov_return_value=>'B'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(32754643932654134)
,p_group_name=>'Administration'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(32611358168653865)
,p_name=>'Breadcrumb'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/page/left_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(32612118244653873)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_internal_name=>'LEFT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32612437258653882)
,p_page_template_id=>wwv_flow_api.id(32612118244653873)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32612786810653883)
,p_page_template_id=>wwv_flow_api.id(32612118244653873)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32613080990653883)
,p_page_template_id=>wwv_flow_api.id(32612118244653873)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32613345183653883)
,p_page_template_id=>wwv_flow_api.id(32612118244653873)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32613672971653884)
,p_page_template_id=>wwv_flow_api.id(32612118244653873)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32613958579653884)
,p_page_template_id=>wwv_flow_api.id(32612118244653873)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32614205653653884)
,p_page_template_id=>wwv_flow_api.id(32612118244653873)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32614574876653884)
,p_page_template_id=>wwv_flow_api.id(32612118244653873)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_and_right_side_columns
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(32614926561653924)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_internal_name=>'LEFT_AND_RIGHT_SIDE_COLUMNS'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32615272546653924)
,p_page_template_id=>wwv_flow_api.id(32614926561653924)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32615585483653925)
,p_page_template_id=>wwv_flow_api.id(32614926561653924)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32615872469653925)
,p_page_template_id=>wwv_flow_api.id(32614926561653924)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32616122686653925)
,p_page_template_id=>wwv_flow_api.id(32614926561653924)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32616405292653925)
,p_page_template_id=>wwv_flow_api.id(32614926561653924)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32616747897653925)
,p_page_template_id=>wwv_flow_api.id(32614926561653924)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32617049542653925)
,p_page_template_id=>wwv_flow_api.id(32614926561653924)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32617358842653925)
,p_page_template_id=>wwv_flow_api.id(32614926561653924)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32617649581653925)
,p_page_template_id=>wwv_flow_api.id(32614926561653924)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
end;
/
prompt --application/shared_components/user_interface/templates/page/login
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(32618020914653926)
,p_theme_id=>42
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-container">',
'  <header class="t-Login-containerHeader">#REGION_POSITION_01#</header>',
'  <main class="t-Login-containerBody" id="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</main>',
'  <footer class="t-Login-containerFooter">#REGION_POSITION_02#</footer>',
'</div>',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32618334000653926)
,p_page_template_id=>wwv_flow_api.id(32618020914653926)
,p_name=>'Body Footer'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32618604365653926)
,p_page_template_id=>wwv_flow_api.id(32618020914653926)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32618955327653926)
,p_page_template_id=>wwv_flow_api.id(32618020914653926)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/master_detail
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(32620317758653928)
,p_theme_id=>42
,p_name=>'Marquee'
,p_internal_name=>'MASTER_DETAIL'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'))
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-info" id="t_Body_info">#REGION_POSITION_02#</div>',
'        <div class="t-Body-contentInner" role="main">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32620589725653929)
,p_page_template_id=>wwv_flow_api.id(32620317758653928)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32620976410653929)
,p_page_template_id=>wwv_flow_api.id(32620317758653928)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32621278064653929)
,p_page_template_id=>wwv_flow_api.id(32620317758653928)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32621549242653929)
,p_page_template_id=>wwv_flow_api.id(32620317758653928)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32621815606653929)
,p_page_template_id=>wwv_flow_api.id(32620317758653928)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32622182119653929)
,p_page_template_id=>wwv_flow_api.id(32620317758653928)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32622485490653930)
,p_page_template_id=>wwv_flow_api.id(32620317758653928)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32622702488653930)
,p_page_template_id=>wwv_flow_api.id(32620317758653928)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32623017889653930)
,p_page_template_id=>wwv_flow_api.id(32620317758653928)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/minimal_no_navigation
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(32623463813653930)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_internal_name=>'MINIMAL_NO_NAVIGATION'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"'
||'></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32623718211653930)
,p_page_template_id=>wwv_flow_api.id(32623463813653930)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32624018953653931)
,p_page_template_id=>wwv_flow_api.id(32623463813653930)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32624376643653931)
,p_page_template_id=>wwv_flow_api.id(32623463813653930)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32624598739653931)
,p_page_template_id=>wwv_flow_api.id(32623463813653930)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32624906568653931)
,p_page_template_id=>wwv_flow_api.id(32623463813653930)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32625239911653931)
,p_page_template_id=>wwv_flow_api.id(32623463813653930)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32625545519653931)
,p_page_template_id=>wwv_flow_api.id(32623463813653930)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/page/modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(32625987042653931)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_internal_name=>'MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--standard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</div>',
'    </div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--standard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32626259927653932)
,p_page_template_id=>wwv_flow_api.id(32625987042653931)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32626549247653932)
,p_page_template_id=>wwv_flow_api.id(32625987042653931)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32626793479653932)
,p_page_template_id=>wwv_flow_api.id(32625987042653931)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/right_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(32627439058653932)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_internal_name=>'RIGHT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8"> ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" aria-label="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button'
||'>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32627748768653933)
,p_page_template_id=>wwv_flow_api.id(32627439058653932)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32628080982653933)
,p_page_template_id=>wwv_flow_api.id(32627439058653932)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32628322814653933)
,p_page_template_id=>wwv_flow_api.id(32627439058653932)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32628592111653933)
,p_page_template_id=>wwv_flow_api.id(32627439058653932)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32628932568653933)
,p_page_template_id=>wwv_flow_api.id(32627439058653932)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32629237584653933)
,p_page_template_id=>wwv_flow_api.id(32627439058653932)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32629522705653933)
,p_page_template_id=>wwv_flow_api.id(32627439058653932)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32629825056653933)
,p_page_template_id=>wwv_flow_api.id(32627439058653932)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/standard
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(32630280113653934)
,p_theme_id=>42
,p_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32630489937653934)
,p_page_template_id=>wwv_flow_api.id(32630280113653934)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32630868107653934)
,p_page_template_id=>wwv_flow_api.id(32630280113653934)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32631134460653934)
,p_page_template_id=>wwv_flow_api.id(32630280113653934)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32631459658653934)
,p_page_template_id=>wwv_flow_api.id(32630280113653934)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32631728668653935)
,p_page_template_id=>wwv_flow_api.id(32630280113653934)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32631988276653935)
,p_page_template_id=>wwv_flow_api.id(32630280113653934)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32632383565653935)
,p_page_template_id=>wwv_flow_api.id(32630280113653934)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/page/wizard_modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(32632709957653935)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_internal_name=>'WIZARD_MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--wizard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</div>',
'    </div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--wizard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32633000263653935)
,p_page_template_id=>wwv_flow_api.id(32632709957653935)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32633326101653935)
,p_page_template_id=>wwv_flow_api.id(32632709957653935)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(32633678771653936)
,p_page_template_id=>wwv_flow_api.id(32632709957653935)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/tworegions
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(40714464473530382)
,p_theme_id=>42
,p_name=>'TwoRegions'
,p_internal_name=>'TWOREGIONS'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#        ',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>      ',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(40714876387530390)
,p_page_template_id=>wwv_flow_api.id(40714464473530382)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(40715379725530391)
,p_page_template_id=>wwv_flow_api.id(40714464473530382)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(40715870980530391)
,p_page_template_id=>wwv_flow_api.id(40714464473530382)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(40716291016530392)
,p_page_template_id=>wwv_flow_api.id(40714464473530382)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(40716816087530392)
,p_page_template_id=>wwv_flow_api.id(40714464473530382)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(40717298081530392)
,p_page_template_id=>wwv_flow_api.id(40714464473530382)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(40717837797530393)
,p_page_template_id=>wwv_flow_api.id(40714464473530382)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/button/icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(32728186871654012)
,p_template_name=>'Icon'
,p_internal_name=>'ICON'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(32728821063654015)
,p_template_name=>'Text'
,p_internal_name=>'TEXT'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text_with_icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(32728906862654015)
,p_template_name=>'Text with Icon'
,p_internal_name=>'TEXT_WITH_ICON'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region/alert
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(32634228983653936)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">#BODY#</div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_internal_name=>'ALERT'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(32634521871653941)
,p_plug_template_id=>wwv_flow_api.id(32634228983653936)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(32637892721653943)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">#PREVIOUS##BODY##SUB_REGIONS##NEXT#</div>'
,p_page_plug_template_name=>'Blank with Attributes'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes_no_grid
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(32638125452653944)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">#PREVIOUS##BODY##SUB_REGIONS##NEXT#</div>'
,p_page_plug_template_name=>'Blank with Attributes (No Grid)'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES_NO_GRID'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3369790999010910123
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(32638477707653944)
,p_plug_template_id=>wwv_flow_api.id(32638125452653944)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(32638705838653944)
,p_plug_template_id=>wwv_flow_api.id(32638125452653944)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/buttons_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(32638950348653944)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##CLOSE##DELETE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_internal_name=>'BUTTONS_CONTAINER'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(32639203333653945)
,p_plug_template_id=>wwv_flow_api.id(32638950348653944)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(32639493418653945)
,p_plug_template_id=>wwv_flow_api.id(32638950348653944)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/cards_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(32641103106653946)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-CardsRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  #BODY##SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Cards Container'
,p_internal_name=>'CARDS_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>21
,p_default_template_options=>'u-colors'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2071277712695139743
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/carousel_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(32642133019653946)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_internal_name=>'CAROUSEL_CONTAINER'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.1/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#'))
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(32642422979653947)
,p_plug_template_id=>wwv_flow_api.id(32642133019653946)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(32642733032653947)
,p_plug_template_id=>wwv_flow_api.id(32642133019653946)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/collapsible
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(32649289040653951)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls"><button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button></div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_internal_name=>'COLLAPSIBLE'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(32649667330653951)
,p_plug_template_id=>wwv_flow_api.id(32649289040653951)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(32649968126653951)
,p_plug_template_id=>wwv_flow_api.id(32649289040653951)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/content_block
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(32654738032653955)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ContentBlock #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ContentBlock-header">',
'    <div class="t-ContentBlock-headerItems t-ContentBlock-headerItems--title">',
'      <span class="t-ContentBlock-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'      <h1 class="t-ContentBlock-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'      #EDIT#',
'    </div>',
'    <div class="t-ContentBlock-headerItems t-ContentBlock-headerItems--buttons">#CHANGE#</div>',
'  </div>',
'  <div class="t-ContentBlock-body">#BODY#</div>',
'  <div class="t-ContentBlock-buttons">#PREVIOUS##NEXT#</div>',
'</div>',
''))
,p_page_plug_template_name=>'Content Block'
,p_internal_name=>'CONTENT_BLOCK'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-ContentBlock--h1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2320668864738842174
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/hero
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(32656779302653956)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h1 class="t-HeroRegion-title">#TITLE#</h1>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_internal_name=>'HERO'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(32657033348653957)
,p_plug_template_id=>wwv_flow_api.id(32656779302653956)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_dialog
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(32658865905653958)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_internal_name=>'INLINE_DIALOG'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(32659153986653958)
,p_plug_template_id=>wwv_flow_api.id(32658865905653958)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_popup
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(32661106133653959)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionPopup" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Popup'
,p_internal_name=>'INLINE_POPUP'
,p_theme_id=>42
,p_theme_class_id=>24
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>1483922538999385230
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(32661424322653959)
,p_plug_template_id=>wwv_flow_api.id(32661106133653959)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/interactive_report
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(32664463708653960)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_internal_name=>'INTERACTIVE_REPORT'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/login
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(32665050822653961)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">#BODY#</div>',
'  <div class="t-Login-buttons">#NEXT#</div>',
'  <div class="t-Login-links">#EDIT##CREATE#</div>',
'  <div class="t-Login-subRegions">#SUB_REGIONS#</div>',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_internal_name=>'LOGIN'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(32665380772653961)
,p_plug_template_id=>wwv_flow_api.id(32665050822653961)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/standard
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(32666307465653962)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(32666655934653962)
,p_plug_template_id=>wwv_flow_api.id(32666307465653962)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(32666947449653962)
,p_plug_template_id=>wwv_flow_api.id(32666307465653962)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/tabs_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(32673186870653965)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES# apex-tabs-region" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_internal_name=>'TABS_CONTAINER'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(32673428789653965)
,p_plug_template_id=>wwv_flow_api.id(32673186870653965)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(32673693955653965)
,p_plug_template_id=>wwv_flow_api.id(32673186870653965)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/title_bar
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(32675723832653966)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_internal_name=>'TITLE_BAR'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/wizard_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(32676733738653967)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_internal_name=>'WIZARD_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(32677083759653967)
,p_plug_template_id=>wwv_flow_api.id(32676733738653967)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list/badge_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(32702049731653984)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_theme_id=>42
,p_theme_class_id=>3
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--cols t-BadgeList--3cols:t-BadgeList--circular'
,p_list_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'Link Classes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/cards
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(32705990090653991)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item is-active #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3><h4 class="t-Card-subtitle">#A07#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3><h4 class="t-Card-subtitle">#A07#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Attributes'
,p_a06_label=>'Card Color Class'
,p_a07_label=>'Subtitle'
,p_reference_id=>2885322685880632508
);
end;
/
prompt --application/shared_components/user_interface/templates/list/links_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(32711645727653994)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_internal_name=>'LINKS_LIST'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
end;
/
prompt --application/shared_components/user_interface/templates/list/media_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(32713216283653995)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showIcons:t-MediaList--showDesc'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Class'
,p_a06_label=>'Icon Color Class'
,p_reference_id=>2066548068783481421
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_bar
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(32716062336653997)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_internal_name=>'MENU_BAR'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  menubar: true,',
'  menubarOverflow: true,',
'  callout: e.hasClass("js-menu-callout")',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Menu Item ID / Action Name'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut'
,p_a06_label=>'Link Target'
,p_reference_id=>2008709236185638887
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_popup
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(32717049128653998)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_internal_name=>'MENU_POPUP'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({ iconType: ''fa'', callout: e.hasClass("js-menu-callout")});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Menu Item ID / Action Name'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut'
,p_a06_label=>'Link Target'
,p_reference_id=>3492264004432431646
);
end;
/
prompt --application/shared_components/user_interface/templates/list/navigation_bar
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(32717686961653999)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" title="#A04#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" title="#A04#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_internal_name=>'NAVIGATION_BAR'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#" title="#A04#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#" title="#A04#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_a04_label=>'Title Attribute'
,p_reference_id=>2846096252961119197
);
end;
/
prompt --application/shared_components/user_interface/templates/list/side_navigation_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(32718024323654000)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_internal_name=>'SIDE_NAVIGATION_MENU'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>'apex.jQuery(''body'').addClass(''t-PageBody--leftNav'');'
,p_theme_id=>42
,p_theme_class_id=>19
,p_default_template_options=>'js-defaultCollapsed'
,p_preset_template_options=>'js-navCollapsed--hidden:t-TreeNav--styleA'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut Key'
,p_a06_label=>'Link Target'
,p_reference_id=>2466292414354694776
);
end;
/
prompt --application/shared_components/user_interface/templates/list/tabs
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(32719823580654002)
,p_list_template_current=>'<li class="t-Tabs-item is-active #A03#" id="#A01#"><a href="#LINK#" class="t-Tabs-link #A04#"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item #A03#" id="#A01#"><a href="#LINK#" class="t-Tabs-link #A04#"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_internal_name=>'TABS'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Tabs--simple'
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'List Item ID'
,p_a03_label=>'List Item Class'
,p_a04_label=>'Link Class'
,p_reference_id=>3288206686691809997
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_mega_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(32721478224654003)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--noSub is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--noSub #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_list_template_name=>'Top Navigation Mega Menu'
,p_internal_name=>'TOP_NAVIGATION_MEGA_MENU'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-MegaMenu #COMPONENT_CSS_CLASSES#" id="t_MenuNav" style="display:none;">',
'  <div class="a-Menu-content t-MegaMenu-container">',
'    <div class="t-MegaMenu-body">',
'    <ul class="t-MegaMenu-list t-MegaMenu-list--top">'))
,p_list_template_after_rows=>' </ul></div></div></div>'
,p_before_sub_list=>'<ul class="t-MegaMenu-list t-MegaMenu-list--sub">'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_sub_list_item_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--hasSub is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--hasSub #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_sub_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>'))
,p_sub_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>'))
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Description'
,p_a04_label=>'List Item Class'
,p_a05_label=>'Shortcut Key'
,p_a06_label=>'Link Target'
,p_a07_label=>'Badge Class'
,p_a08_label=>'Menu Item Class'
,p_reference_id=>1665447133514362075
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(32723444857654005)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_internal_name=>'TOP_NAVIGATION_MENU'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("#t_MenuNav", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  menubar: true,',
'  menubarOverflow: true,',
'  callout: e.hasClass("js-menu-callout")',
'});',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="t_MenuNav"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Menu Item ID / Action Name'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut Key'
,p_a06_label=>'Link Target'
,p_reference_id=>2525307901300239072
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_tabs
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(32724477325654006)
,p_list_template_current=>'<li class="t-NavTabs-item #A03# is-active" id="#A01#"><a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-NavTabs-label">#TEXT_ESC_SC#</span><span class'
||'="t-NavTabs-badge #A05#">#A02#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-NavTabs-item #A03#" id="#A01#"><a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-NavTabs-label">#TEXT_ESC_SC#</span><span class="t-NavTab'
||'s-badge #A05#">#A02#</span></a></li>'
,p_list_template_name=>'Top Navigation Tabs'
,p_internal_name=>'TOP_NAVIGATION_TABS'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-NavTabs--inlineLabels-lg:t-NavTabs--displayLabels-sm'
,p_list_template_before_rows=>'<ul class="t-NavTabs #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_navtabs">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'List Item ID'
,p_a02_label=>'Badge Value'
,p_a03_label=>'List Item Class'
,p_a04_label=>'Link Class'
,p_a05_label=>'Badge Class'
,p_reference_id=>1453011561172885578
);
end;
/
prompt --application/shared_components/user_interface/templates/list/wizard_progress
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(32725988739654007)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap" data-link="#LINK#"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></'
||'div></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap" data-link="#LINK#"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>',
''))
,p_list_template_name=>'Wizard Progress'
,p_internal_name=>'WIZARD_PROGRESS'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report/alerts
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(32678029231653968)
,p_row_template_name=>'Alerts'
,p_internal_name=>'ALERTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_alerts" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/badge_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(32678216863653969)
,p_row_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
' <span class="t-BadgeList-wrap u-color">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
' </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed:t-BadgeList--circular'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/cards
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(32682218782653972)
,p_row_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':CARD_LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <div class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/comments
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(32687646490653974)
,p_row_template_name=>'Comments'
,p_internal_name=>'COMMENTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body">',
'        <div class="t-Comments-info">',
'            #USER_NAME# <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/content_row
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(32688793024653975)
,p_row_template_name=>'Content Row'
,p_internal_name=>'CONTENT_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-ContentRow-item #ITEM_CLASSES#">',
'  <div class="t-ContentRow-wrap">',
'    <div class="t-ContentRow-selection">#SELECTION#</div>',
'    <div class="t-ContentRow-iconWrap">',
'      <span class="t-ContentRow-icon #ICON_CLASS#">#ICON_HTML#</span>',
'    </div>',
'    <div class="t-ContentRow-body">',
'      <div class="t-ContentRow-content">',
'        <h3 class="t-ContentRow-title">#TITLE#</h3>',
'        <div class="t-ContentRow-description">#DESCRIPTION#</div>',
'      </div>',
'      <div class="t-ContentRow-misc">#MISC#</div>',
'      <div class="t-ContentRow-actions">#ACTIONS#</div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-ContentRow #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>1797843454948280151
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/media_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(32692079860653977)
,p_row_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item #LIST_CLASS#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #LINK_CLASS#" #LINK_ATTR#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #ICON_COLOR_CLASS#"><span class="t-Icon #ICON_CLASS#"></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#LIST_TITLE#</h3>',
'            <p class="t-MediaList-desc">#LIST_TEXT#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#LIST_BADGE#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_row_template_condition1=>':LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item #LIST_CLASS#">',
'    <div class="t-MediaList-itemWrap #LINK_CLASS#" #LINK_ATTR#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #ICON_COLOR_CLASS#"><span class="t-Icon #ICON_CLASS#"></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#LIST_TITLE#</h3>',
'            <p class="t-MediaList-desc">#LIST_TEXT#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#LIST_BADGE#</span>',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_preset_template_options=>'t-MediaList--stack'
,p_reference_id=>2092157460408299055
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/search_results
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(32695017601653979)
,p_row_template_name=>'Search Results'
,p_internal_name=>'SEARCH_RESULTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/standard
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(32695209989653979)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" id="report_table_#REGION_STATIC_ID#" aria-label="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(32695209989653979)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/timeline
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(32697823011653981)
,p_row_template_name=>'Timeline'
,p_internal_name=>'TIMELINE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline" data-region-id="#REGION_STATIC_ID#">',
''))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_column
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(32698236901653982)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_COLUMN'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_row
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(32700210767653983)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/hidden
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(32727486961654009)
,p_template_name=>'Hidden'
,p_internal_name=>'HIDDEN'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(32727585480654010)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_above
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(32727633628654011)
,p_template_name=>'Optional - Above'
,p_internal_name=>'OPTIONAL_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_floating
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(32727728396654011)
,p_template_name=>'Optional - Floating'
,p_internal_name=>'OPTIONAL_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>1607675164727151865
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(32727850363654011)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer is-required rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_above
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(32727964865654012)
,p_template_name=>'Required - Above'
,p_internal_name=>'REQUIRED_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_floating
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(32728039020654012)
,p_template_name=>'Required - Floating'
,p_internal_name=>'REQUIRED_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>1607675344320152883
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(32730283165654017)
,p_name=>'Breadcrumb'
,p_internal_name=>'BREADCRUMB'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><h1 class="t-Breadcrumb-label">#NAME#</h1></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(32730392643654034)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="apex-item-text"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(32730382159654021)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" aria-label="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" aria-label="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" aria-label="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_cust_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_cust_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" aria-label="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">'
,p_cust_weekend_close_format=>'</td>'
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_cust_wk_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_weekend_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_wk_weekend_close_format=>'</td>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(32731841764654054)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(32630280113653934)
,p_default_dialog_template=>wwv_flow_api.id(32625987042653931)
,p_error_template=>wwv_flow_api.id(32618020914653926)
,p_printer_friendly_template=>wwv_flow_api.id(32630280113653934)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(32618020914653926)
,p_default_button_template=>wwv_flow_api.id(32728821063654015)
,p_default_region_template=>wwv_flow_api.id(32666307465653962)
,p_default_chart_template=>wwv_flow_api.id(32666307465653962)
,p_default_form_template=>wwv_flow_api.id(32666307465653962)
,p_default_reportr_template=>wwv_flow_api.id(32666307465653962)
,p_default_tabform_template=>wwv_flow_api.id(32666307465653962)
,p_default_wizard_template=>wwv_flow_api.id(32666307465653962)
,p_default_menur_template=>wwv_flow_api.id(32675723832653966)
,p_default_listr_template=>wwv_flow_api.id(32666307465653962)
,p_default_irr_template=>wwv_flow_api.id(32664463708653960)
,p_default_report_template=>wwv_flow_api.id(32695209989653979)
,p_default_label_template=>wwv_flow_api.id(32727728396654011)
,p_default_menu_template=>wwv_flow_api.id(32730283165654017)
,p_default_calendar_template=>wwv_flow_api.id(32730382159654021)
,p_default_list_template=>wwv_flow_api.id(32711645727653994)
,p_default_nav_list_template=>wwv_flow_api.id(32723444857654005)
,p_default_top_nav_list_temp=>wwv_flow_api.id(32723444857654005)
,p_default_side_nav_list_temp=>wwv_flow_api.id(32718024323654000)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(32638950348653944)
,p_default_dialogr_template=>wwv_flow_api.id(32637892721653943)
,p_default_option_label=>wwv_flow_api.id(32727728396654011)
,p_default_required_label=>wwv_flow_api.id(32728039020654012)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(32717686961653999)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.6/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(32730643722654039)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(32730852570654040)
,p_theme_id=>42
,p_name=>'Redwood Light'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/oracle-fonts/oraclesans-apex#MIN#.css?v=#APEX_VERSION#',
'#THEME_IMAGES#css/Redwood-Light#MIN#.css?v=#APEX_VERSION#'))
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_read_only=>true
,p_reference_id=>2596426436825065489
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(32731057967654040)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(32731199424654040)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(32731471869654040)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(32731626540654040)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32619220426653927)
,p_theme_id=>42
,p_name=>'PAGE_LAYOUT'
,p_display_name=>'Page Layout'
,p_display_sequence=>10
,p_template_types=>'PAGE'
,p_null_text=>'Floating (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32619602922653927)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND'
,p_display_name=>'Page Background'
,p_display_sequence=>20
,p_template_types=>'PAGE'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32634843529653941)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32635428950653942)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32636659579653943)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32636993010653943)
,p_theme_id=>42
,p_name=>'ALERT_TITLE'
,p_display_name=>'Alert Title'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the title of the alert is displayed.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32639857483653945)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32640416025653945)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32643404233653948)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32644188292653949)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32645432261653949)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32646644570653950)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32647055781653950)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32648395402653951)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32650257739653952)
,p_theme_id=>42
,p_name=>'COLLAPSIBLE_BUTTON_ICONS'
,p_display_name=>'Collapsible Button Icons'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines which arrows to use to represent the icons for the collapse and expand button.'
,p_null_text=>'Arrows'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32650647039653952)
,p_theme_id=>42
,p_name=>'COLLAPSIBLE_ICON_POSITION'
,p_display_name=>'Collapsible Icon Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the position of the expand and collapse toggle for the region.'
,p_null_text=>'Start'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32654034456653955)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32655230946653956)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32656240539653956)
,p_theme_id=>42
,p_name=>'BODY_STYLE'
,p_display_name=>'Body Style'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the region''s body container.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32657304489653957)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'REGION'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Rounded Corners'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32658300104653957)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON'
,p_display_name=>'Display Icon'
,p_display_sequence=>50
,p_template_types=>'REGION'
,p_help_text=>'Display the Hero Region icon.'
,p_null_text=>'Yes (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32660484719653958)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32663331746653960)
,p_theme_id=>42
,p_name=>'CALLOUT_POSITION'
,p_display_name=>'Callout Position'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Determines where the callout for the popup will be positioned relative to its parent.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32665642780653961)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER'
,p_display_name=>'Login Header'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the Login region header.'
,p_null_text=>'Icon and Title (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32673999297653965)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32674394475653966)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32675056850653966)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32677360558653967)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32678513324653969)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32679762922653970)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32681740765653971)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the overall style for the component.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32682490633653972)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'REPORT'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Circle'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32683513476653972)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>70
,p_template_types=>'REPORT'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32684343249653973)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32686738538653974)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32688349696653975)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32689172303653975)
,p_theme_id=>42
,p_name=>'COL_CONTENT_TITLE'
,p_display_name=>'Title'
,p_display_sequence=>120
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32689545986653975)
,p_theme_id=>42
,p_name=>'COL_SELECTION'
,p_display_name=>'Selection'
,p_display_sequence=>100
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32689958748653976)
,p_theme_id=>42
,p_name=>'COL_ICON'
,p_display_name=>'Icon'
,p_display_sequence=>110
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32690323401653976)
,p_theme_id=>42
,p_name=>'COL_CONTENT_DESCRIPTION'
,p_display_name=>'Description'
,p_display_sequence=>130
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32690700195653976)
,p_theme_id=>42
,p_name=>'COL_MISC'
,p_display_name=>'Misc'
,p_display_sequence=>140
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32691093018653976)
,p_theme_id=>42
,p_name=>'COL_ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>150
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32691518456653976)
,p_theme_id=>42
,p_name=>'CONTENT_ALIGNMENT'
,p_display_name=>'Content Alignment'
,p_display_sequence=>90
,p_template_types=>'REPORT'
,p_null_text=>'Center (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32692787764653977)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>35
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32695514431653980)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32696386626653980)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32697363265653981)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32698909655653982)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32702575541653988)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32703127796653988)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32704929166653989)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32706388076653991)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'LIST'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Circle'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32707550241653992)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>80
,p_template_types=>'LIST'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32708370265653992)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32710526119653993)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32711950693653994)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32715736331653997)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32718896706654001)
,p_theme_id=>42
,p_name=>'COLLAPSE_STYLE'
,p_display_name=>'Collapse Mode'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32724748729654006)
,p_theme_id=>42
,p_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_sequence=>90
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a desktop-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32725520508654007)
,p_theme_id=>42
,p_name=>'MOBILE'
,p_display_name=>'Mobile'
,p_display_sequence=>100
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a mobile-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32726575552654007)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32728376317654014)
,p_theme_id=>42
,p_name=>'ICON_HOVER_ANIMATION'
,p_display_name=>'Icon Hover Animation'
,p_display_sequence=>55
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32729716282654016)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32732035532654055)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32732449255654056)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32733225386654057)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32733642812654057)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32734029780654057)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32735219446654058)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32735809787654058)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32736629074654059)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32737031851654059)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32737620358654060)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32738278274654060)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32738632158654060)
,p_theme_id=>42
,p_name=>'PAGINATION_DISPLAY'
,p_display_name=>'Pagination Display'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of pagination for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32739211119654061)
,p_theme_id=>42
,p_name=>'SPACING_TOP'
,p_display_name=>'Spacing Top'
,p_display_sequence=>90
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the top of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32739884133654061)
,p_theme_id=>42
,p_name=>'SPACING_BOTTOM'
,p_display_name=>'Spacing Bottom'
,p_display_sequence=>100
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the bottom of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32740594097654061)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32741032603654062)
,p_theme_id=>42
,p_name=>'ITEM_PRE_TEXT'
,p_display_name=>'Item Pre Text'
,p_display_sequence=>20
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Pre Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32741486916654062)
,p_theme_id=>42
,p_name=>'ITEM_POST_TEXT'
,p_display_name=>'Item Post Text'
,p_display_sequence=>30
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Post Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32741799147654062)
,p_theme_id=>42
,p_name=>'REGION_TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'REGION'
,p_help_text=>'Set the top margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32742847529654063)
,p_theme_id=>42
,p_name=>'REGION_BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>210
,p_template_types=>'REGION'
,p_help_text=>'Set the bottom margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32743802437654063)
,p_theme_id=>42
,p_name=>'REGION_RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'REGION'
,p_help_text=>'Set the right margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32744845409654064)
,p_theme_id=>42
,p_name=>'REGION_LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'REGION'
,p_help_text=>'Set the left margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32745881917654064)
,p_theme_id=>42
,p_name=>'BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the bottom margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32746875044654065)
,p_theme_id=>42
,p_name=>'LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the left margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32747834524654065)
,p_theme_id=>42
,p_name=>'RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'FIELD'
,p_help_text=>'Set the right margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32748870300654066)
,p_theme_id=>42
,p_name=>'TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'FIELD'
,p_help_text=>'Set the top margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32749799433654066)
,p_theme_id=>42
,p_name=>'RADIO_GROUP_DISPLAY'
,p_display_name=>'Item Group Display'
,p_display_sequence=>300
,p_template_types=>'FIELD'
,p_help_text=>'Determines the display style for radio and check box items.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(32750214249654067)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32614869586653924)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(32612118244653873)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32617971665653926)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(32614926561653924)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32619457437653927)
,p_theme_id=>42
,p_name=>'PAGE_LAYOUT_SPLIT'
,p_display_name=>'Split'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(32618020914653926)
,p_css_classes=>'t-LoginPage--split'
,p_group_id=>wwv_flow_api.id(32619220426653927)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32619845104653928)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_1'
,p_display_name=>'Background 1'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(32618020914653926)
,p_css_classes=>'t-LoginPage--bg1'
,p_group_id=>wwv_flow_api.id(32619602922653927)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32620056160653928)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_2'
,p_display_name=>'Background 2'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(32618020914653926)
,p_css_classes=>'t-LoginPage--bg2'
,p_group_id=>wwv_flow_api.id(32619602922653927)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32620249970653928)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_3'
,p_display_name=>'Background 3'
,p_display_sequence=>30
,p_page_template_id=>wwv_flow_api.id(32618020914653926)
,p_css_classes=>'t-LoginPage--bg3'
,p_group_id=>wwv_flow_api.id(32619602922653927)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32623334300653930)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(32620317758653928)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32625862951653931)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(32623463813653930)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32627162225653932)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(32625987042653931)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32627320711653932)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(32625987042653931)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32630162503653934)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(32627439058653932)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32632624872653935)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(32630280113653934)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32633897635653936)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(32632709957653935)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32634096022653936)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(32632709957653935)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32634998374653942)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(32634228983653936)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(32634843529653941)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32635213401653942)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32634228983653936)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(32634843529653941)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32635656317653942)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32634228983653936)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(32635428950653942)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32635840734653942)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(32634228983653936)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(32635428950653942)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32636045763653942)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(32634228983653936)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(32635428950653942)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32636259222653942)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(32634228983653936)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32636419111653942)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(32634228983653936)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(32635428950653942)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32636790795653943)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(32634228983653936)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(32636659579653943)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32637286264653943)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32634228983653936)
,p_css_classes=>'t-Alert--removeHeading'
,p_group_id=>wwv_flow_api.id(32636993010653943)
,p_template_types=>'REGION'
,p_help_text=>'Hides the Alert Title from being displayed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32637465801653943)
,p_theme_id=>42
,p_name=>'HIDDENHEADER'
,p_display_name=>'Hidden but Accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(32634228983653936)
,p_css_classes=>'t-Alert--accessibleHeading'
,p_group_id=>wwv_flow_api.id(32636993010653943)
,p_template_types=>'REGION'
,p_help_text=>'Visually hides the alert title, but assistive technologies can still read it.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32637656566653943)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32634228983653936)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(32636659579653943)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32637820970653943)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(32634228983653936)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(32636659579653943)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32640002963653945)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(32638950348653944)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(32639857483653945)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32640229893653945)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(32638950348653944)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(32639857483653945)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32640683609653945)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(32638950348653944)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(32640416025653945)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32640815754653946)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(32638950348653944)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(32640416025653945)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32641019043653946)
,p_theme_id=>42
,p_name=>'STICK_TO_BOTTOM'
,p_display_name=>'Stick to Bottom for Mobile'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32638950348653944)
,p_css_classes=>'t-ButtonRegion--stickToBottom'
,p_template_types=>'REGION'
,p_help_text=>'This will position the button container region to the bottom of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32641471044653946)
,p_theme_id=>42
,p_name=>'STYLE_A'
,p_display_name=>'Style A'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32641103106653946)
,p_css_classes=>'t-CardsRegion--styleA'
,p_group_id=>wwv_flow_api.id(32639857483653945)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32641663068653946)
,p_theme_id=>42
,p_name=>'STYLE_B'
,p_display_name=>'Style B'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(32641103106653946)
,p_css_classes=>'t-CardsRegion--styleB'
,p_group_id=>wwv_flow_api.id(32639857483653945)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32641883560653946)
,p_theme_id=>42
,p_name=>'STYLE_C'
,p_display_name=>'Style C'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(32641103106653946)
,p_css_classes=>'t-CardsRegion--styleC'
,p_group_id=>wwv_flow_api.id(32639857483653945)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32641994118653946)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(32641103106653946)
,p_css_classes=>'u-colors'
,p_template_types=>'REGION'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32643027249653948)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(32642133019653946)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32643188140653948)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(32642133019653946)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32643594715653948)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(32642133019653946)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(32643404233653948)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32643877700653948)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(32642133019653946)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(32643404233653948)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32644019695653948)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(32642133019653946)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(32643404233653948)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32644412946653949)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32642133019653946)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(32644188292653949)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32644633646653949)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(32642133019653946)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(32644188292653949)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32644852610653949)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(32642133019653946)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(32644188292653949)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32645033609653949)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32642133019653946)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(32643404233653948)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32645287752653949)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(32642133019653946)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(32644188292653949)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32645677456653949)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32642133019653946)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(32645432261653949)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32645804946653949)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(32642133019653946)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(32645432261653949)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32646022485653950)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(32642133019653946)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(32645432261653949)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32646259330653950)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(32642133019653946)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(32645432261653949)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32646418334653950)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(32642133019653946)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(32645432261653949)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32646790825653950)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32642133019653946)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(32646644570653950)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32647200528653950)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32642133019653946)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(32647055781653950)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32647471062653950)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(32642133019653946)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(32646644570653950)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32647649607653950)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32642133019653946)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32647845186653950)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32642133019653946)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(32639857483653945)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32648015893653950)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(32642133019653946)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32648252207653951)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(32642133019653946)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(32647055781653950)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32648648572653951)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32642133019653946)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(32648395402653951)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32648822868653951)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(32642133019653946)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(32648395402653951)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32649073474653951)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(32642133019653946)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(32639857483653945)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32649254392653951)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(32642133019653946)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32650410974653952)
,p_theme_id=>42
,p_name=>'ICONS_PLUS_OR_MINUS'
,p_display_name=>'Plus or Minus'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(32649289040653951)
,p_css_classes=>'t-Region--hideShowIconsMath'
,p_group_id=>wwv_flow_api.id(32650257739653952)
,p_template_types=>'REGION'
,p_help_text=>'Use the plus and minus icons for the expand and collapse button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32650796551653952)
,p_theme_id=>42
,p_name=>'CONRTOLS_POSITION_END'
,p_display_name=>'End'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(32649289040653951)
,p_css_classes=>'t-Region--controlsPosEnd'
,p_group_id=>wwv_flow_api.id(32650647039653952)
,p_template_types=>'REGION'
,p_help_text=>'Position the expand / collapse button to the end of the region header.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32650994135653952)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32649289040653951)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(32644188292653949)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32651268059653952)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(32649289040653951)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(32644188292653949)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32651456321653952)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32649289040653951)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(32645432261653949)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32651647762653953)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(32649289040653951)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(32645432261653949)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32651805060653953)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(32649289040653951)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(32645432261653949)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32652001295653953)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(32649289040653951)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(32645432261653949)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32652190265653953)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(32649289040653951)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(32645432261653949)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32652391375653953)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(32649289040653951)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(32647055781653950)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32652598085653954)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32649289040653951)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32652878991653954)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(32649289040653951)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(32644188292653949)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32653059950653954)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(32649289040653951)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(32644188292653949)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32653224235653955)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(32649289040653951)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(32639857483653945)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32653415444653955)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32649289040653951)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(32639857483653945)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32653593420653955)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32649289040653951)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(32647055781653950)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32653815256653955)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(32649289040653951)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(32639857483653945)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32654253529653955)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32649289040653951)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(32654034456653955)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32654415558653955)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(32649289040653951)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(32654034456653955)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32654686343653955)
,p_theme_id=>42
,p_name=>'REMEMBER_COLLAPSIBLE_STATE'
,p_display_name=>'Remember Collapsible State'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(32649289040653951)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
,p_help_text=>'This option saves the current state of the collapsible region for the duration of the session.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32655063471653956)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(32654738032653955)
,p_css_classes=>'t-ContentBlock--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32655479159653956)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H1'
,p_display_name=>'Heading Level 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32654738032653955)
,p_css_classes=>'t-ContentBlock--h1'
,p_group_id=>wwv_flow_api.id(32655230946653956)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32655599897653956)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H2'
,p_display_name=>'Heading Level 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(32654738032653955)
,p_css_classes=>'t-ContentBlock--h2'
,p_group_id=>wwv_flow_api.id(32655230946653956)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32655814912653956)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H3'
,p_display_name=>'Heading Level 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(32654738032653955)
,p_css_classes=>'t-ContentBlock--h3'
,p_group_id=>wwv_flow_api.id(32655230946653956)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32656082189653956)
,p_theme_id=>42
,p_name=>'ADD_BODY_PADDING'
,p_display_name=>'Add Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32654738032653955)
,p_css_classes=>'t-ContentBlock--padded'
,p_template_types=>'REGION'
,p_help_text=>'Adds padding to the region''s body container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32656458515653956)
,p_theme_id=>42
,p_name=>'SHADOW_BACKGROUND'
,p_display_name=>'Shadow Background'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32654738032653955)
,p_css_classes=>'t-ContentBlock--shadowBG'
,p_group_id=>wwv_flow_api.id(32656240539653956)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly darker background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32656681316653956)
,p_theme_id=>42
,p_name=>'LIGHT_BACKGROUND'
,p_display_name=>'Light Background'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(32654738032653955)
,p_css_classes=>'t-ContentBlock--lightBG'
,p_group_id=>wwv_flow_api.id(32656240539653956)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly lighter background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32657495694653957)
,p_theme_id=>42
,p_name=>'ICONS_CIRCULAR'
,p_display_name=>'Circle'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32656779302653956)
,p_css_classes=>'t-HeroRegion--iconsCircle'
,p_group_id=>wwv_flow_api.id(32657304489653957)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a circle.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32657711545653957)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(32656779302653956)
,p_css_classes=>'t-HeroRegion--iconsSquare'
,p_group_id=>wwv_flow_api.id(32657304489653957)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a square.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32657963569653957)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32656779302653956)
,p_css_classes=>'t-HeroRegion--featured'
,p_group_id=>wwv_flow_api.id(32639857483653945)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32658124817653957)
,p_theme_id=>42
,p_name=>'STACKED_FEATURED'
,p_display_name=>'Stacked Featured'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(32656779302653956)
,p_css_classes=>'t-HeroRegion--featured t-HeroRegion--centered'
,p_group_id=>wwv_flow_api.id(32639857483653945)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32658506084653957)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON_NO'
,p_display_name=>'No'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32656779302653956)
,p_css_classes=>'t-HeroRegion--hideIcon'
,p_group_id=>wwv_flow_api.id(32658300104653957)
,p_template_types=>'REGION'
,p_help_text=>'Hide the Hero Region icon.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32658782301653958)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32656779302653956)
,p_css_classes=>'t-HeroRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the hero region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32659470592653958)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(32658865905653958)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32659682405653958)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(32658865905653958)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32659809349653958)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(32658865905653958)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32660008211653958)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32658865905653958)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32660255274653958)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(32658865905653958)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32660673251653958)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32658865905653958)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(32660484719653958)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32660866440653959)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(32658865905653958)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(32660484719653958)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32660989903653959)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(32658865905653958)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(32660484719653958)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32661703812653959)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(32661106133653959)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32661889483653959)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(32661106133653959)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(32660484719653958)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32662182946653959)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(32661106133653959)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(32660484719653958)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32662302789653959)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32661106133653959)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(32660484719653958)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32662572469653960)
,p_theme_id=>42
,p_name=>'NONE'
,p_display_name=>'None'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(32661106133653959)
,p_css_classes=>'js-dialog-nosize'
,p_group_id=>wwv_flow_api.id(32660484719653958)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32662755598653960)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(32661106133653959)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32662966777653960)
,p_theme_id=>42
,p_name=>'REMOVE_PAGE_OVERLAY'
,p_display_name=>'Remove Page Overlay'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(32661106133653959)
,p_css_classes=>'js-popup-noOverlay'
,p_template_types=>'REGION'
,p_help_text=>'This option will display the inline dialog without an overlay on the background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32663133388653960)
,p_theme_id=>42
,p_name=>'DISPLAY_POPUP_CALLOUT'
,p_display_name=>'Display Popup Callout'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(32661106133653959)
,p_css_classes=>'js-popup-callout'
,p_template_types=>'REGION'
,p_help_text=>'Use this option to add display a callout for the popup. Note that callout will only be displayed if the data-parent-element custom attribute is defined.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32663508355653960)
,p_theme_id=>42
,p_name=>'BEFORE'
,p_display_name=>'Before'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32661106133653959)
,p_css_classes=>'js-popup-pos-before'
,p_group_id=>wwv_flow_api.id(32663331746653960)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout before or typically to the left of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32663695513653960)
,p_theme_id=>42
,p_name=>'AFTER'
,p_display_name=>'After'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(32661106133653959)
,p_css_classes=>'js-popup-pos-after'
,p_group_id=>wwv_flow_api.id(32663331746653960)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout after or typically to the right of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32663909752653960)
,p_theme_id=>42
,p_name=>'ABOVE'
,p_display_name=>'Above'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(32661106133653959)
,p_css_classes=>'js-popup-pos-above'
,p_group_id=>wwv_flow_api.id(32663331746653960)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout above or typically on top of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32664171432653960)
,p_theme_id=>42
,p_name=>'BELOW'
,p_display_name=>'Below'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(32661106133653959)
,p_css_classes=>'js-popup-pos-below'
,p_group_id=>wwv_flow_api.id(32663331746653960)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout below or typically to the bottom of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32664296277653960)
,p_theme_id=>42
,p_name=>'INSIDE'
,p_display_name=>'Inside'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(32661106133653959)
,p_css_classes=>'js-popup-pos-inside'
,p_group_id=>wwv_flow_api.id(32663331746653960)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout inside of the parent. This is useful when the parent is sufficiently large, such as a report or large region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32664692256653961)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32664463708653960)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32664972474653961)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(32664463708653960)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32665886202653961)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER_ICON'
,p_display_name=>'Icon'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32665050822653961)
,p_css_classes=>'t-Login-region--headerIcon'
,p_group_id=>wwv_flow_api.id(32665642780653961)
,p_template_types=>'REGION'
,p_help_text=>'Displays only the Region Icon in the Login region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32666085105653961)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER_TITLE'
,p_display_name=>'Title'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(32665050822653961)
,p_css_classes=>'t-Login-region--headerTitle'
,p_group_id=>wwv_flow_api.id(32665642780653961)
,p_template_types=>'REGION'
,p_help_text=>'Displays only the Region Title in the Login region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32666230036653962)
,p_theme_id=>42
,p_name=>'LOGO_HEADER_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(32665050822653961)
,p_css_classes=>'t-Login-region--headerHidden'
,p_group_id=>wwv_flow_api.id(32665642780653961)
,p_template_types=>'REGION'
,p_help_text=>'Hides both the Region Icon and Title from the Login region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32667239892653962)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(32666307465653962)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32667458175653962)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32666307465653962)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(32646644570653950)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32667613050653962)
,p_theme_id=>42
,p_name=>'TEXT_CONTENT'
,p_display_name=>'Text Content'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(32666307465653962)
,p_css_classes=>'t-Region--textContent'
,p_group_id=>wwv_flow_api.id(32639857483653945)
,p_template_types=>'REGION'
,p_help_text=>'Useful for displaying primarily text-based content, such as FAQs and more.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32667817457653962)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32666307465653962)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(32639857483653945)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32668043891653963)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32666307465653962)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32668275065653963)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(32666307465653962)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(32639857483653945)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32668405301653963)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32666307465653962)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(32644188292653949)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32668604499653963)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(32666307465653962)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(32644188292653949)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32668860091653963)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32666307465653962)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(32647055781653950)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32668994167653963)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(32666307465653962)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(32646644570653950)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32669237694653963)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(32666307465653962)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(32647055781653950)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32669464594653963)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32666307465653962)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(32645432261653949)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32669628104653963)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(32666307465653962)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(32645432261653949)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32669798683653963)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(32666307465653962)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(32645432261653949)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32670059074653963)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(32666307465653962)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(32645432261653949)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32670253308653964)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(32666307465653962)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(32645432261653949)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32670457576653964)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(32666307465653962)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32670641252653964)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(32666307465653962)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(32639857483653945)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32670838554653964)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(32666307465653962)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(32644188292653949)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32671032159653964)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(32666307465653962)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(32644188292653949)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32671211193653964)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_api.id(32666307465653962)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_api.id(32645432261653949)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32671451473653964)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_api.id(32666307465653962)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_api.id(32645432261653949)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32671636555653964)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_api.id(32666307465653962)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_api.id(32645432261653949)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32671823463653964)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_api.id(32666307465653962)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_api.id(32645432261653949)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32671988617653964)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_api.id(32666307465653962)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_api.id(32645432261653949)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32672274351653964)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_api.id(32666307465653962)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_api.id(32645432261653949)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32672430552653965)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_api.id(32666307465653962)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_api.id(32645432261653949)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32672673014653965)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_api.id(32666307465653962)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_api.id(32645432261653949)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32672851078653965)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_api.id(32666307465653962)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_api.id(32645432261653949)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32673040752653965)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_api.id(32666307465653962)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_api.id(32645432261653949)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32674284835653965)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32673186870653965)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(32673999297653965)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32674651221653966)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32673186870653965)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(32674394475653966)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32674850965653966)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(32673186870653965)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(32674394475653966)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32675271056653966)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32673186870653965)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(32675056850653966)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32675484205653966)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(32673186870653965)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(32675056850653966)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32675648465653966)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32673186870653965)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32676007646653967)
,p_theme_id=>42
,p_name=>'USE_COMPACT_STYLE'
,p_display_name=>'Use Compact Style'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32675723832653966)
,p_css_classes=>'t-BreadcrumbRegion--compactTitle'
,p_template_types=>'REGION'
,p_help_text=>'Uses a compact style for the breadcrumbs.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32676265135653967)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(32675723832653966)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32676419559653967)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(32675723832653966)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(32655230946653956)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32676604942653967)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(32675723832653966)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(32655230946653956)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32677555506653967)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(32676733738653967)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(32677360558653967)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32677754291653967)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32676733738653967)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(32677360558653967)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32677983526653968)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(32676733738653967)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32678774606653969)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(32678216863653969)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(32678513324653969)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32678913067653969)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(32678216863653969)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(32678513324653969)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32679165750653970)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(32678216863653969)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(32678513324653969)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32679380611653970)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(32678216863653969)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(32678513324653969)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32679555524653970)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(32678216863653969)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(32678513324653969)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32679932263653970)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(32678216863653969)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(32679762922653970)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32680124081653970)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(32678216863653969)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(32679762922653970)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32680301512653970)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(32678216863653969)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(32679762922653970)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32680525262653970)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(32678216863653969)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(32679762922653970)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32680776597653971)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(32678216863653969)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(32679762922653970)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32680935103653971)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(32678216863653969)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(32679762922653970)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32681145269653971)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(32678216863653969)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(32679762922653970)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32681317782653971)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(32678216863653969)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(32679762922653970)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32681545802653971)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(32678216863653969)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32681927231653971)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(32678216863653969)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(32681740765653971)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32682105534653971)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(32678216863653969)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(32681740765653971)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32682718482653972)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(32682218782653972)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_api.id(32682490633653972)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32682982551653972)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(32682218782653972)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_api.id(32682490633653972)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32683146735653972)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(32682218782653972)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(32681740765653971)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32683292895653972)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(32682218782653972)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32683740284653972)
,p_theme_id=>42
,p_name=>'CARDS_COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(32682218782653972)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(32683513476653972)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32683908230653972)
,p_theme_id=>42
,p_name=>'CARD_RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(32682218782653972)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(32683513476653972)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32684130365653973)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(32682218782653972)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(32681740765653971)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32684532478653973)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(32682218782653972)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(32684343249653973)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32684694222653973)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(32682218782653972)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(32679762922653970)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32684966093653973)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(32682218782653972)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(32679762922653970)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32685097818653973)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(32682218782653972)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(32679762922653970)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32685311839653973)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(32682218782653972)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(32679762922653970)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32685544607653973)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(32682218782653972)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(32679762922653970)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32685761163653973)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(32682218782653972)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(32679762922653970)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32685973257653973)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(32682218782653972)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(32684343249653973)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32686148403653973)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(32682218782653972)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(32684343249653973)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32686325897653974)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(32682218782653972)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(32684343249653973)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32686532710653974)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(32682218782653972)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32686954837653974)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(32682218782653972)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(32686738538653974)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32687178894653974)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(32682218782653972)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(32686738538653974)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32687310159653974)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(32682218782653972)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(32681740765653971)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32687583281653974)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(32682218782653972)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(32681740765653971)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32687947607653974)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(32687646490653974)
,p_css_classes=>'t-Comments--iconsSquare'
,p_group_id=>wwv_flow_api.id(32682490633653972)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32688104023653975)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(32687646490653974)
,p_css_classes=>'t-Comments--iconsRounded'
,p_group_id=>wwv_flow_api.id(32682490633653972)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32688507720653975)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(32687646490653974)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(32688349696653975)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32688747087653975)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(32687646490653974)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(32688349696653975)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32689338795653975)
,p_theme_id=>42
,p_name=>'TITLE_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(32688793024653975)
,p_css_classes=>'t-ContentRow--hideTitle'
,p_group_id=>wwv_flow_api.id(32689172303653975)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Title from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32689764297653975)
,p_theme_id=>42
,p_name=>'SELECTION_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(32688793024653975)
,p_css_classes=>'t-ContentRow--hideSelection'
,p_group_id=>wwv_flow_api.id(32689545986653975)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Selection column from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32690143923653976)
,p_theme_id=>42
,p_name=>'ICON_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(32688793024653975)
,p_css_classes=>'t-ContentRow--hideIcon'
,p_group_id=>wwv_flow_api.id(32689958748653976)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Icon from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32690548494653976)
,p_theme_id=>42
,p_name=>'DESCRIPTION_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(32688793024653975)
,p_css_classes=>'t-ContentRow--hideDescription'
,p_group_id=>wwv_flow_api.id(32690323401653976)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Description from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32690953995653976)
,p_theme_id=>42
,p_name=>'MISC_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(32688793024653975)
,p_css_classes=>'t-ContentRow--hideMisc'
,p_group_id=>wwv_flow_api.id(32690700195653976)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Misc column from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32691299516653976)
,p_theme_id=>42
,p_name=>'ACTIONS_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(32688793024653975)
,p_css_classes=>'t-ContentRow--hideActions'
,p_group_id=>wwv_flow_api.id(32691093018653976)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Actions column from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32691730990653976)
,p_theme_id=>42
,p_name=>'ALIGNMENT_TOP'
,p_display_name=>'Top'
,p_display_sequence=>100
,p_report_template_id=>wwv_flow_api.id(32688793024653975)
,p_css_classes=>'t-ContentRow--alignTop'
,p_group_id=>wwv_flow_api.id(32691518456653976)
,p_template_types=>'REPORT'
,p_help_text=>'Aligns the content to the top of the row. This is useful when you expect that yours rows will vary in height (e.g. some rows will have longer descriptions than others).'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32691973825653976)
,p_theme_id=>42
,p_name=>'STYLE_COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(32688793024653975)
,p_css_classes=>'t-ContentRow--styleCompact'
,p_group_id=>wwv_flow_api.id(32681740765653971)
,p_template_types=>'REPORT'
,p_help_text=>'This option reduces the padding and font sizes to present a compact display of the same information.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32692343902653977)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(32692079860653977)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_api.id(32682490633653972)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32692582955653977)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(32692079860653977)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_api.id(32682490633653972)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32692923010653978)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(32692079860653977)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(32692787764653977)
,p_template_types=>'REPORT'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32693164329653978)
,p_theme_id=>42
,p_name=>'2_COLUMN_GRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(32692079860653977)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(32679762922653970)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32693382470653978)
,p_theme_id=>42
,p_name=>'3_COLUMN_GRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(32692079860653977)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(32679762922653970)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32693488757653978)
,p_theme_id=>42
,p_name=>'4_COLUMN_GRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(32692079860653977)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(32679762922653970)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32693703894653978)
,p_theme_id=>42
,p_name=>'5_COLUMN_GRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(32692079860653977)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(32679762922653970)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32693910634653978)
,p_theme_id=>42
,p_name=>'STACK'
,p_display_name=>'Stack'
,p_display_sequence=>5
,p_report_template_id=>wwv_flow_api.id(32692079860653977)
,p_css_classes=>'t-MediaList--stack'
,p_group_id=>wwv_flow_api.id(32679762922653970)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32694113511653978)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(32692079860653977)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(32679762922653970)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32694378543653979)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(32692079860653977)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32694576383653979)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(32692079860653977)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32694745370653979)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(32692079860653977)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32694965093653979)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(32692079860653977)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32695732056653980)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(32695209989653979)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(32695514431653980)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32695985735653980)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(32695209989653979)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32696176699653980)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(32695209989653979)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(32695514431653980)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32696581019653980)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(32695209989653979)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(32696386626653980)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32696750329653981)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(32695209989653979)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(32696386626653980)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32696935676653981)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(32695209989653979)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(32695514431653980)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32697166501653981)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(32695209989653979)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(32695514431653980)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32697565701653981)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(32695209989653979)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(32697363265653981)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32697700931653981)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(32695209989653979)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(32697363265653981)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32698131187653982)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(32697823011653981)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(32681740765653971)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact version of timeline with smaller text and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32698503078653982)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(32698236901653982)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(32679762922653970)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32698693095653982)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(32698236901653982)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(32679762922653970)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32699156190653982)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(32698236901653982)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(32698909655653982)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32699351687653982)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(32698236901653982)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(32698909655653982)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32699548837653982)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(32698236901653982)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(32698909655653982)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32699758053653983)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(32698236901653982)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(32698909655653982)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32699963143653983)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(32698236901653982)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(32698909655653982)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32700123914653983)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(32698236901653982)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(32698909655653982)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32700511171653983)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(32700210767653983)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(32698909655653982)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32700710376653983)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(32700210767653983)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(32679762922653970)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32700918268653983)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(32700210767653983)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(32679762922653970)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32701184237653983)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(32700210767653983)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(32698909655653982)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32701311127653983)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(32700210767653983)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(32698909655653982)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32701526276653983)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(32700210767653983)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(32698909655653982)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32701772417653984)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(32700210767653983)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(32698909655653982)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32701948545653984)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(32700210767653983)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(32698909655653982)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32702319826653988)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(32702049731653984)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32702706375653988)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(32702049731653984)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(32702575541653988)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32702933919653988)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(32702049731653984)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(32702575541653988)
,p_template_types=>'LIST'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32703345713653988)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(32702049731653984)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(32703127796653988)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32703506043653988)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(32702049731653984)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(32703127796653988)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32703775220653988)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(32702049731653984)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(32703127796653988)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32703919031653988)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(32702049731653984)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(32703127796653988)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32704095224653989)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(32702049731653984)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(32703127796653988)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32704326533653989)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(32702049731653984)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(32703127796653988)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32704582510653989)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(32702049731653984)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(32703127796653988)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32704719013653989)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(32702049731653984)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(32703127796653988)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32705144411653989)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(32702049731653984)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(32704929166653989)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32705384288653989)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(32702049731653984)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(32704929166653989)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32705563618653989)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(32702049731653984)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(32704929166653989)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32705707371653989)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(32702049731653984)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(32704929166653989)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32705944166653991)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(32702049731653984)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(32704929166653989)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32706574962653991)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(32705990090653991)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_api.id(32706388076653991)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32706708997653991)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(32705990090653991)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_api.id(32706388076653991)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32706888525653991)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(32705990090653991)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32707098520653991)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(32705990090653991)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(32702575541653988)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32707387049653992)
,p_theme_id=>42
,p_name=>'CARDS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(32705990090653991)
,p_css_classes=>'t-Cards--stacked'
,p_group_id=>wwv_flow_api.id(32703127796653988)
,p_template_types=>'LIST'
,p_help_text=>'Stacks the cards on top of each other.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32707757978653992)
,p_theme_id=>42
,p_name=>'COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(32705990090653991)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(32707550241653992)
,p_template_types=>'LIST'
,p_help_text=>'Fills the card background with the color of the icon or default link style.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32707984347653992)
,p_theme_id=>42
,p_name=>'RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(32705990090653991)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(32707550241653992)
,p_template_types=>'LIST'
,p_help_text=>'Raises the card so it pops up.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32708132859653992)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(32705990090653991)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(32702575541653988)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32708494561653992)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(32705990090653991)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(32708370265653992)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32708735032653992)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(32705990090653991)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(32703127796653988)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32708934892653992)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(32705990090653991)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(32703127796653988)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32709130540653992)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(32705990090653991)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(32703127796653988)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32709319487653993)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(32705990090653991)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(32703127796653988)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32709520322653993)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(32705990090653991)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(32703127796653988)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32709780626653993)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(32705990090653991)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(32703127796653988)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32709923094653993)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(32705990090653991)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(32702575541653988)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32710098682653993)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(32705990090653991)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(32702575541653988)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32710371294653993)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(32705990090653991)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32710697906653993)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(32705990090653991)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(32710526119653993)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32710933127653993)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(32705990090653991)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(32710526119653993)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32711126199653993)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(32705990090653991)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(32708370265653992)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32711329479653993)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(32705990090653991)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(32708370265653992)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32711579184653994)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(32705990090653991)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(32708370265653992)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32712128029653994)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(32711645727653994)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(32711950693653994)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32712326929653994)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(32711645727653994)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32712520935653994)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(32711645727653994)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32712729100653995)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(32711645727653994)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32712921463653995)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(32711645727653994)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(32711950693653994)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32713144754653995)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(32711645727653994)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(32702575541653988)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32713546933653995)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(32713216283653995)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_api.id(32706388076653991)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32713760944653996)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(32713216283653995)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_api.id(32706388076653991)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32713979418653996)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(32713216283653995)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(32703127796653988)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32714150719653996)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(32713216283653995)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(32703127796653988)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32714345339653996)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(32713216283653995)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(32703127796653988)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32714534370653996)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(32713216283653995)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(32703127796653988)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32714731742653996)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(32713216283653995)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(32703127796653988)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32714949419653996)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(32713216283653995)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Display an icon next to the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32715151093653996)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(32713216283653995)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32715305247653997)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(32713216283653995)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32715497778653997)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(32713216283653995)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies colors from the Theme''s color palette to icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32715922366653997)
,p_theme_id=>42
,p_name=>'LIST_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(32713216283653995)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(32715736331653997)
,p_template_types=>'LIST'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32716322226653998)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(32716062336653997)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32716507611653998)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(32716062336653997)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32716700441653998)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(32716062336653997)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32716984821653998)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(32716062336653997)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32717338725653999)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(32717049128653998)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Enables you to define a keyboard shortcut to activate the menu item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32717539428653999)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(32717049128653998)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu. Note that callout will only be displayed if the data-parent-element custom attribute is defined.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32717953752654000)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(32717686961653999)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32718288410654001)
,p_theme_id=>42
,p_name=>'STYLE_A'
,p_display_name=>'Style A'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(32718024323654000)
,p_css_classes=>'t-TreeNav--styleA'
,p_group_id=>wwv_flow_api.id(32702575541653988)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation A'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32718510576654001)
,p_theme_id=>42
,p_name=>'STYLE_B'
,p_display_name=>'Style B'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(32718024323654000)
,p_css_classes=>'t-TreeNav--styleB'
,p_group_id=>wwv_flow_api.id(32702575541653988)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation B'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32718768618654001)
,p_theme_id=>42
,p_name=>'STYLE_C'
,p_display_name=>'Classic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(32718024323654000)
,p_css_classes=>'t-TreeNav--classic'
,p_group_id=>wwv_flow_api.id(32702575541653988)
,p_template_types=>'LIST'
,p_help_text=>'Classic Style'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32719089982654001)
,p_theme_id=>42
,p_name=>'COLLAPSE_STYLE_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(32718024323654000)
,p_css_classes=>'js-navCollapsed--hidden'
,p_group_id=>wwv_flow_api.id(32718896706654001)
,p_template_types=>'LIST'
,p_help_text=>'Completely hide the navigation menu when it is collapsed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32719325570654001)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(32718024323654000)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32719497215654002)
,p_theme_id=>42
,p_name=>'ICON_DEFAULT'
,p_display_name=>'Icon (Default)'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(32718024323654000)
,p_css_classes=>'js-navCollapsed--default'
,p_group_id=>wwv_flow_api.id(32718896706654001)
,p_template_types=>'LIST'
,p_help_text=>'Display icons when the navigation menu is collapsed for large screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32719736619654002)
,p_theme_id=>42
,p_name=>'COLLAPSED_DEFAULT'
,p_display_name=>'Collapsed by Default'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(32718024323654000)
,p_css_classes=>'js-defaultCollapsed'
,p_template_types=>'LIST'
,p_help_text=>'This option will load the side navigation menu in a collapsed state by default.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32720118442654002)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(32719823580654002)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(32715736331653997)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32720387877654002)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(32719823580654002)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(32702575541653988)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32720512121654002)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(32719823580654002)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(32702575541653988)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32720784361654003)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(32719823580654002)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(32710526119653993)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32720978122654003)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(32719823580654002)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(32710526119653993)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32721131130654003)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(32719823580654002)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(32703127796653988)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32721340400654003)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(32719823580654002)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(32715736331653997)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32721766630654004)
,p_theme_id=>42
,p_name=>'FULL_WIDTH'
,p_display_name=>'Full Width'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(32721478224654003)
,p_css_classes=>'t-MegaMenu--fullWidth'
,p_template_types=>'LIST'
,p_help_text=>'Stretches the menu to fill the width of the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32721933647654004)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(32721478224654003)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Displays a callout arrow that points to where the menu was activated from.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32722170094654004)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(32721478224654003)
,p_css_classes=>'t-MegaMenu--layout2Cols'
,p_group_id=>wwv_flow_api.id(32703127796653988)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32722350703654004)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(32721478224654003)
,p_css_classes=>'t-MegaMenu--layout3Cols'
,p_group_id=>wwv_flow_api.id(32703127796653988)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32722529921654004)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(32721478224654003)
,p_css_classes=>'t-MegaMenu--layout4Cols'
,p_group_id=>wwv_flow_api.id(32703127796653988)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32722692203654004)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(32721478224654003)
,p_css_classes=>'t-MegaMenu--layout5Cols'
,p_group_id=>wwv_flow_api.id(32703127796653988)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32722926933654005)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(32721478224654003)
,p_css_classes=>'t-MegaMenu--layoutStacked'
,p_group_id=>wwv_flow_api.id(32703127796653988)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32723157796654005)
,p_theme_id=>42
,p_name=>'CUSTOM'
,p_display_name=>'Custom'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(32721478224654003)
,p_css_classes=>'t-MegaMenu--layoutCustom'
,p_group_id=>wwv_flow_api.id(32703127796653988)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32723351036654005)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(32721478224654003)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32723695668654005)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(32723444857654005)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32723965676654006)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(32723444857654005)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32724112472654006)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(32723444857654005)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32724307072654006)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(32723444857654005)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32724943305654006)
,p_theme_id=>42
,p_name=>'LABEL_INLINE_LG'
,p_display_name=>'Display labels inline'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(32724477325654006)
,p_css_classes=>'t-NavTabs--inlineLabels-lg'
,p_group_id=>wwv_flow_api.id(32724748729654006)
,p_template_types=>'LIST'
,p_help_text=>'Display the label inline with the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32725098958654006)
,p_theme_id=>42
,p_name=>'LABEL_ABOVE_LG'
,p_display_name=>'Display labels above'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(32724477325654006)
,p_css_classes=>'t-NavTabs--stacked'
,p_group_id=>wwv_flow_api.id(32724748729654006)
,p_template_types=>'LIST'
,p_help_text=>'Display the label stacked above the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32725367577654007)
,p_theme_id=>42
,p_name=>'NO_LABEL_LG'
,p_display_name=>'Do not display labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(32724477325654006)
,p_css_classes=>'t-NavTabs--hiddenLabels-lg'
,p_group_id=>wwv_flow_api.id(32724748729654006)
,p_template_types=>'LIST'
,p_help_text=>'Hides the label for the list item'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32725753940654007)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS_SM'
,p_display_name=>'Display labels'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(32724477325654006)
,p_css_classes=>'t-NavTabs--displayLabels-sm'
,p_group_id=>wwv_flow_api.id(32725520508654007)
,p_template_types=>'LIST'
,p_help_text=>'Displays the label for the list items below the icon'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32725901478654007)
,p_theme_id=>42
,p_name=>'HIDE_LABELS_SM'
,p_display_name=>'Do not display labels'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(32724477325654006)
,p_css_classes=>'t-NavTabs--hiddenLabels-sm'
,p_group_id=>wwv_flow_api.id(32725520508654007)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32726338070654007)
,p_theme_id=>42
,p_name=>'WIZARD_PROGRESS_LINKS'
,p_display_name=>'Make Wizard Steps Clickable'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(32725988739654007)
,p_css_classes=>'js-wizardProgressLinks'
,p_template_types=>'LIST'
,p_help_text=>'This option will make the wizard steps clickable links.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32726770116654008)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(32725988739654007)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(32726575552654007)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32726928668654008)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(32725988739654007)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(32726575552654007)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32727154409654008)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(32725988739654007)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(32726575552654007)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32727370015654008)
,p_theme_id=>42
,p_name=>'VERTICAL_LIST'
,p_display_name=>'Vertical Orientation'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(32725988739654007)
,p_css_classes=>'t-WizardSteps--vertical'
,p_template_types=>'LIST'
,p_help_text=>'Displays the wizard progress list in a vertical orientation and is suitable for displaying within a side column of a page.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32728563793654015)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(32728186871654012)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_api.id(32728376317654014)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32728690650654015)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(32728186871654012)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_api.id(32728376317654014)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32729115573654015)
,p_theme_id=>42
,p_name=>'HIDE_LABEL_ON_MOBILE'
,p_display_name=>'Hide Label on Mobile'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(32728906862654015)
,p_css_classes=>'t-Button--mobileHideLabel'
,p_template_types=>'BUTTON'
,p_help_text=>'This template options hides the button label on small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32729360243654015)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(32728906862654015)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_api.id(32728376317654014)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32729546790654016)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(32728906862654015)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_api.id(32728376317654014)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32729934668654016)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(32728906862654015)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(32729716282654016)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32730126847654016)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(32728906862654015)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(32729716282654016)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32732281720654056)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(32732035532654055)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32732663861654056)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(32732449255654056)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32732837448654057)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(32732035532654055)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32732995687654057)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(32732035532654055)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32733458149654057)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(32733225386654057)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32733875301654057)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(32733642812654057)
,p_template_types=>'BUTTON'
,p_help_text=>'A large button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32734209239654057)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(32734029780654057)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32734412725654058)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(32733642812654057)
,p_template_types=>'BUTTON'
,p_help_text=>'A small button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32734623124654058)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(32732035532654055)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32734853424654058)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(32733225386654057)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32735061728654058)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(32734029780654057)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32735400209654058)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(32735219446654058)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32735677108654058)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(32735219446654058)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32736085084654059)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(32735809787654058)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32736280413654059)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(32735809787654058)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32736450140654059)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(32735809787654058)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32736795993654059)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(32736629074654059)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32737253774654059)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(32737031851654059)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32737420101654059)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(32737031851654059)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32737847330654060)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(32737620358654060)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32738087868654060)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(32737620358654060)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32738457457654060)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(32738278274654060)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32738817486654060)
,p_theme_id=>42
,p_name=>'HIDE_WHEN_ALL_ROWS_DISPLAYED'
,p_display_name=>'Hide when all rows displayed'
,p_display_sequence=>10
,p_css_classes=>'t-Report--hideNoPagination'
,p_group_id=>wwv_flow_api.id(32738632158654060)
,p_template_types=>'REPORT'
,p_help_text=>'This option will hide the pagination when all rows are displayed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32739062400654060)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_LINK'
,p_display_name=>'Display as Link'
,p_display_sequence=>30
,p_css_classes=>'t-Button--link'
,p_group_id=>wwv_flow_api.id(32733225386654057)
,p_template_types=>'BUTTON'
,p_help_text=>'This option makes the button appear as a text link.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32739447776654061)
,p_theme_id=>42
,p_name=>'SMALLTOPMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padTop'
,p_group_id=>wwv_flow_api.id(32739211119654061)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32739602383654061)
,p_theme_id=>42
,p_name=>'LARGETOPMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapTop'
,p_group_id=>wwv_flow_api.id(32739211119654061)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32740040271654061)
,p_theme_id=>42
,p_name=>'SMALLBOTTOMMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padBottom'
,p_group_id=>wwv_flow_api.id(32739884133654061)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32740196027654061)
,p_theme_id=>42
,p_name=>'LARGEBOTTOMMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapBottom'
,p_group_id=>wwv_flow_api.id(32739884133654061)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32740439302654061)
,p_theme_id=>42
,p_name=>'TINY'
,p_display_name=>'Tiny'
,p_display_sequence=>10
,p_css_classes=>'t-Button--tiny'
,p_group_id=>wwv_flow_api.id(32733642812654057)
,p_template_types=>'BUTTON'
,p_help_text=>'A very small button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32740812764654062)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(32740594097654061)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32741252662654062)
,p_theme_id=>42
,p_name=>'PRE_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--preTextBlock'
,p_group_id=>wwv_flow_api.id(32741032603654062)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Pre Text in a block style immediately before the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32741611015654062)
,p_theme_id=>42
,p_name=>'POST_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--postTextBlock'
,p_group_id=>wwv_flow_api.id(32741486916654062)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Post Text in a block style immediately after the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32742071460654062)
,p_theme_id=>42
,p_name=>'RTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(32741799147654062)
,p_template_types=>'REGION'
,p_help_text=>'Removes the top margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32742246192654062)
,p_theme_id=>42
,p_name=>'RTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(32741799147654062)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32742471463654063)
,p_theme_id=>42
,p_name=>'RTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(32741799147654062)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32742592687654063)
,p_theme_id=>42
,p_name=>'RTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(32741799147654062)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32742997903654063)
,p_theme_id=>42
,p_name=>'RBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(32742847529654063)
,p_template_types=>'REGION'
,p_help_text=>'Removes the bottom margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32743218344654063)
,p_theme_id=>42
,p_name=>'RBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(32742847529654063)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32743487035654063)
,p_theme_id=>42
,p_name=>'RBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(32742847529654063)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32743597143654063)
,p_theme_id=>42
,p_name=>'RBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(32742847529654063)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32744043879654063)
,p_theme_id=>42
,p_name=>'RRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(32743802437654063)
,p_template_types=>'REGION'
,p_help_text=>'Removes the right margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32744208067654064)
,p_theme_id=>42
,p_name=>'RRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(32743802437654063)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32744433824654064)
,p_theme_id=>42
,p_name=>'RRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(32743802437654063)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32744646017654064)
,p_theme_id=>42
,p_name=>'RRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(32743802437654063)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32745060301654064)
,p_theme_id=>42
,p_name=>'RLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(32744845409654064)
,p_template_types=>'REGION'
,p_help_text=>'Removes the left margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32745262533654064)
,p_theme_id=>42
,p_name=>'RLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(32744845409654064)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small left margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32745478933654064)
,p_theme_id=>42
,p_name=>'RLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(32744845409654064)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32745668509654064)
,p_theme_id=>42
,p_name=>'RLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(32744845409654064)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32746064038654064)
,p_theme_id=>42
,p_name=>'FBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(32745881917654064)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32746271597654064)
,p_theme_id=>42
,p_name=>'FBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(32745881917654064)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32746486167654065)
,p_theme_id=>42
,p_name=>'FBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(32745881917654064)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32746608690654065)
,p_theme_id=>42
,p_name=>'FBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(32745881917654064)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32747073757654065)
,p_theme_id=>42
,p_name=>'FLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(32746875044654065)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32747280518654065)
,p_theme_id=>42
,p_name=>'FLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(32746875044654065)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32747470874654065)
,p_theme_id=>42
,p_name=>'FLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(32746875044654065)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32747622333654065)
,p_theme_id=>42
,p_name=>'FLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(32746875044654065)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32748052915654065)
,p_theme_id=>42
,p_name=>'FRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(32747834524654065)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32748270601654065)
,p_theme_id=>42
,p_name=>'FRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(32747834524654065)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32748442348654065)
,p_theme_id=>42
,p_name=>'FRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(32747834524654065)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32748588520654066)
,p_theme_id=>42
,p_name=>'FRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(32747834524654065)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32749062920654066)
,p_theme_id=>42
,p_name=>'FTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(32748870300654066)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32749229721654066)
,p_theme_id=>42
,p_name=>'FTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(32748870300654066)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32749455052654066)
,p_theme_id=>42
,p_name=>'FTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(32748870300654066)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32749624673654066)
,p_theme_id=>42
,p_name=>'FTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(32748870300654066)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32750027426654067)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_PILL_BUTTON'
,p_display_name=>'Display as Pill Button'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--radioButtonGroup'
,p_group_id=>wwv_flow_api.id(32749799433654066)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the radio buttons to look like a button set / pill button.  Note that the the radio buttons must all be in the same row for this option to work.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32750406884654067)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(32750214249654067)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32750659751654067)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(32750214249654067)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32750868300654067)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(40718371739530395)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(40714464473530382)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts/delete_confirm_msg
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(32754452107654133)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications/application_express_accounts
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(32611017229653863)
,p_name=>'Application Express Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/plugins/region_type/com_fos_plsql_dynamic_content
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(81041461157632344)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.FOS.PLSQL_DYNAMIC_CONTENT'
,p_display_name=>'FOS - PL/SQL Dynamic Content'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.FOS.PLSQL_DYNAMIC_CONTENT'),'')
,p_javascript_file_urls=>'#PLUGIN_FILES#js/script#MIN#.js'
,p_css_file_urls=>'#PLUGIN_FILES#css/style#MIN#.css'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- =============================================================================',
'--',
'--  FOS = FOEX Open Source (fos.world), by FOEX GmbH, Austria (www.foex.at)',
'--',
'--  This is a refreshable version of the PL/SQL Dynamic Content Region.',
'--',
'--  License: MIT',
'--',
'--  GitHub: https://github.com/foex-open-source/fos-plsql-dynamic-content',
'--',
'-- =============================================================================',
'',
'G_METHOD_HTP  constant varchar2(10) := ''htp'';',
'G_METHOD_CLOB constant varchar2(10) := ''clob'';',
'',
'procedure htp_p_clob',
'  ( p_clob clob',
'  )',
'as',
'    l_offset number;',
'    l_chunk  varchar2(32767);',
'begin',
'    while apex_string.next_chunk',
'        ( p_str    => p_clob',
'        , p_chunk  => l_chunk',
'        , p_offset => l_offset',
'        , p_amount => 32767',
'        )',
'    loop',
'       sys.htp.prn(l_chunk);',
'    end loop;',
'end;',
'',
'function render',
'  ( p_region              apex_plugin.t_region',
'  , p_plugin              apex_plugin.t_plugin',
'  , p_is_printer_friendly boolean',
'  )',
'return apex_plugin.t_region_render_result',
'as',
'    l_return apex_plugin.t_region_render_result;',
'    ',
'    -- required settings',
'    l_region_id             varchar2(4000)             := p_region.static_id;',
'    l_wrapper_id            varchar2(4000)             := p_region.static_id || ''_FOS_WRAPPER'';',
'    l_ajax_identifier       varchar2(4000)             := apex_plugin.get_ajax_identifier;',
'    ',
'    c_method                p_region.attribute_14%type := nvl(p_region.attribute_14, G_METHOD_HTP);',
'    l_plsql_code            p_region.attribute_01%type := p_region.attribute_01;',
'    ',
'    l_lazy_load             boolean                    := nvl(p_region.attribute_11, ''N'') = ''Y'';',
'    l_lazy_refresh          boolean                    := nvl(p_region.attribute_12, ''N'') = ''Y'';',
'    ',
'    c_options               apex_t_varchar2            := apex_string.split(p_region.attribute_15, '':'');',
'    c_substitute_values     boolean                    := ''substitute-values'' member of c_options;',
'    c_sanitize_content      boolean                    := ''sanitize-content''  member of c_options;',
'',
'    -- Javascript Initialization Code',
'    l_init_js_fn            varchar2(32767)            := nvl(apex_plugin_util.replace_substitutions(p_region.init_javascript_code), ''undefined'');',
'    ',
'    -- page items to submit settings',
'    l_items_to_submit       varchar2(4000)             := apex_plugin_util.page_item_names_to_jquery(p_region.attribute_02);',
'    l_suppress_change_event boolean                    := p_region.attribute_03 is not null and p_region.attribute_04 = ''Y'';',
'    ',
'    -- spinner settings',
'    l_show_spinner          boolean                    := p_region.attribute_05 != ''N'';',
'    l_show_spinner_overlay  boolean                    := p_region.attribute_05 like ''%_OVERLAY'';',
'    l_spinner_position      varchar2(4000)             :=',
'        case ',
'            when p_region.attribute_05 like ''ON_PAGE%''   then ''body'' ',
'            when p_region.attribute_05 like ''ON_REGION%'' then ''#'' || l_region_id',
'            else null',
'        end;',
'        ',
'    -- variables for CLOB mode',
'        ',
'    -- used to store the original g_clob_01 value',
'    -- and restore it once we''re done with g_clob_01',
'    l_temp_g_clob_01        clob;',
'    c_data_variable         varchar2(4000)             := ''R'' || p_region.id || ''_DATA'';',
'begin',
'    -- standard debugging intro, but only if necessary',
'    if apex_application.g_debug',
'    then',
'        apex_plugin_util.debug_region',
'          ( p_plugin => p_plugin',
'          , p_region => p_region',
'          );',
'    end if;',
'    ',
'    -- sanity checks',
'    if c_sanitize_content and not c_method = G_METHOD_CLOB then',
'        raise_application_error(-20000, ''The sanitize option can only be used in combination with Output Method: APEX_APPLICATION.g_clob_01'');',
'    end if;',
'    ',
'    -- conditionally load the DOMPurify library',
'    if c_sanitize_content then',
'        apex_javascript.add_library ',
'          ( p_name       => ''purify#MIN#''',
'          , p_directory  => p_plugin.file_prefix || ''js/dompurify/2.2.6/''',
'          , p_key        => ''fos-purify''',
'          );',
'    end if;',
'',
'    -- a wrapper is needed to properly identify and replace the content in case of a refresh',
'    sys.htp.p(''<div id="'' || apex_escape.html_attribute(l_wrapper_id) || ''">'');',
'       ',
'    -- we let the devloper choose whether we substitute values automatically for them or not ',
'    if c_substitute_values ',
'    then',
'        l_plsql_code := apex_plugin_util.replace_substitutions(l_plsql_code);',
'    end if;',
'    ',
'    -- only when lazy-loading is turned off we immediately execute the plsql code.',
'    -- with lazy-loading the page will be rendered first, then an ajax call executes the code',
'    if not l_lazy_load',
'    then',
'        if c_method = G_METHOD_CLOB then',
'            l_temp_g_clob_01 := apex_application.g_clob_01;',
'            apex_application.g_clob_01 := null;',
'        end if;',
'',
'        apex_exec.execute_plsql(l_plsql_code);',
'',
'        if c_method = G_METHOD_CLOB then',
'            if not c_sanitize_content then',
'                htp_p_clob(apex_application.g_clob_01);',
'            else',
'                apex_json.initialize_clob_output;',
'                apex_json.open_object;',
'                apex_json.write(''val'', apex_application.g_clob_01);',
'                apex_json.close_object;',
'                htp.p(''<script>'');',
'                htp_p_clob(''var '' || c_data_variable || '' = ('' || apex_json.get_clob_output || '').val;'');',
'                htp.p(''</script>'');',
'                apex_json.free_output;',
'',
'                apex_application.g_clob_01 := l_temp_g_clob_01;',
'            end if;',
'        end if;',
'    end if;',
'    ',
'    -- closing the wrapper',
'    sys.htp.p(''</div>'');',
'    ',
'    -- creating a json object with the region settings to pass to the client',
'    apex_json.initialize_clob_output;',
'',
'    apex_json.open_object;',
'    apex_json.write(''ajaxIdentifier''     , l_ajax_identifier      );',
'    apex_json.write(''regionId''           , l_region_id            );',
'    apex_json.write(''regionWrapperId''    , l_wrapper_id           );',
'    apex_json.write(''itemsToSubmit''      , l_items_to_submit      );',
'    apex_json.write(''suppressChangeEvent'', l_suppress_change_event);',
'    apex_json.write(''showSpinner''        , l_show_spinner         );',
'    apex_json.write(''showSpinnerOverlay'' , l_show_spinner_overlay );',
'    apex_json.write(''spinnerPosition''    , l_spinner_position     );',
'    apex_json.write(''lazyLoad''           , l_lazy_load            );',
'    apex_json.write(''lazyRefresh''        , l_lazy_refresh         );',
'    apex_json.write(''sanitizeContent''    , c_sanitize_content     );',
'',
'    if c_sanitize_content then',
'        apex_json.write_raw(''DOMPurifyConfig'', ''{}'');',
'    end if;',
'',
'    if not l_lazy_load and c_sanitize_content and c_method = G_METHOD_CLOB then',
'        apex_json.write_raw(''initialContent'', c_data_variable);',
'    end if;',
'',
'    apex_json.close_object;',
'    ',
'    -- initialization code for the region widget. needed to handle the refresh event',
'    apex_javascript.add_onload_code(''FOS.region.plsqlDynamicContent('' || apex_json.get_clob_output|| '', ''|| l_init_js_fn || '');'');',
'    ',
'    apex_json.free_output;',
'',
'    return l_return;',
'end render;',
'',
'function ajax',
'  ( p_region apex_plugin.t_region',
'  , p_plugin apex_plugin.t_plugin',
'  )',
'return apex_plugin.t_region_ajax_result',
'as',
'',
'    c_method                  p_region.attribute_14%type := nvl(p_region.attribute_14, G_METHOD_HTP);',
'',
'    -- plug-in attributes',
'    l_plsql_code              p_region.attribute_01%type := p_region.attribute_01;',
'    l_items_to_return         p_region.attribute_03%type := p_region.attribute_03;',
'    c_substitute_values       boolean                    := instr(p_region.attribute_15, ''substitute-values'') > 0;',
'    ',
'    -- local variables',
'    l_item_names              apex_t_varchar2;',
'    ',
'    -- needed for accessing the htp buffer',
'    l_htp_buffer              sys.htp.htbuf_arr;',
'    l_rows_x                  number                     := 9999999;',
'    l_rows                    number                     := 9999999;',
'    ',
'    -- resulting content',
'    l_content                 clob                       := '''';',
'    l_buffer                  varchar2(32000);',
'',
'    l_return                  apex_plugin.t_region_ajax_result;',
'    ',
'    -- fast append of a clob',
'    -- see benchmarks here: https://gist.github.com/vlsi/052424856512f80137989c817cb8f046',
'    procedure clob_append',
'      ( p_clob    in out nocopy clob',
'      , p_buffer  in out nocopy varchar2',
'      , p_append  in            varchar2',
'      ) ',
'    as',
'    begin',
'        p_buffer := p_buffer || p_append;',
'    exception',
'        when value_error then',
'            if p_clob is null ',
'            then',
'                p_clob := p_buffer;',
'            else',
'                sys.dbms_lob.writeappend(p_clob, length(p_buffer), p_buffer);',
'            end if;',
'            p_buffer := p_append;',
'    end clob_append; ',
'    --',
'begin',
'    -- standard debugging intro, but only if necessary',
'    if apex_application.g_debug',
'    then',
'        apex_plugin_util.debug_region',
'          ( p_plugin => p_plugin',
'          , p_region => p_region',
'          );',
'    end if;',
'    ',
'    if c_method = G_METHOD_HTP then',
'',
'        -- helps remove the unnecesarry "X-ORACLE-IGNORE: IGNORE" which appear when using htp.get_page',
'        sys.htp.p;',
'        sys.htp.get_page(l_htp_buffer, l_rows_x);',
'',
'        -- we let the devloper choose whether we substitute values automatically for them or not ',
'        if c_substitute_values ',
'        then',
'            l_plsql_code := apex_plugin_util.replace_substitutions(l_plsql_code);',
'        end if;',
'',
'        -- executing the pl/sql code',
'        apex_exec.execute_plsql(l_plsql_code);',
'',
'        -- getting the htp buffer, where l_plsql_code might have written into. ',
'        -- has the side effect of removing it',
'        sys.htp.get_page(l_htp_buffer, l_rows);',
'',
'        -- rewriting htp buffer into a clob and pass back in json object',
'        for l_idx in 1 .. l_rows ',
'        loop',
'            --l_content := l_content || l_htp_buffer(l_idx); -- slower',
'            clob_append(l_content, l_buffer, l_htp_buffer(l_idx));',
'        end loop;',
'        l_content := l_content || l_buffer;',
'',
'    elsif c_method = G_METHOD_CLOB then',
'',
'        -- executing the pl/sql code',
'        apex_exec.execute_plsql(l_plsql_code);',
'        l_content := apex_application.g_clob_01;',
'',
'    end if;',
'',
'    apex_json.open_object;',
'    apex_json.write(''status'' , ''success'');',
'    apex_json.write(''content'', l_content);',
'',
'    -- adding info about the page items to return',
'    if l_items_to_return is not null ',
'    then',
'    ',
'        l_item_names := apex_string.split(l_items_to_return,'','');',
'        ',
'        apex_json.open_array(''items'');',
'        ',
'        for l_idx in 1 .. l_item_names.count ',
'        loop',
'            apex_json.open_object;',
'            apex_json.write',
'              ( p_name  => ''id''',
'              , p_value => l_item_names(l_idx)',
'              );',
'            apex_json.write',
'              ( p_name  => ''value''',
'              , p_value => apex_util.get_session_state(l_item_names(l_idx))',
'              );',
'            apex_json.close_object;',
'        end loop;',
'',
'        apex_json.close_array;',
'    end if;',
'',
'    apex_json.close_object;',
'',
'    return l_return;',
'end ajax;'))
,p_api_version=>2
,p_render_function=>'render'
,p_ajax_function=>'ajax'
,p_standard_attributes=>'INIT_JAVASCRIPT_CODE'
,p_substitute_attributes=>false
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'    The <strong>FOS - PL/SQL Dynamic Content</strong> plug-in is a refreshable region where you can output any HTML code using <code>sys.htp.p</code> calls or assigning the content to <code>apex_application.g_clob_01</code>. It supports Lazy Loading,'
||' Lazy Refresh, HTML Sanitization, can show a loading spinner and mask, and gives you before/after refresh events to hook into.',
'</p>',
'<p>',
'    Using this plug-in you have complete control of the HTML output. ',
'</p>'))
,p_version_identifier=>'20.2.0'
,p_about_url=>'https://fos.world'
,p_plugin_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// Settings for the FOS browser extension',
'@fos-auto-return-to-page',
'@fos-auto-open-files:js/script.js'))
,p_files_version=>131
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(81067953379176293)
,p_plugin_id=>wwv_flow_api.id(81041461157632344)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'PL/SQL Code'
,p_attribute_type=>'PLSQL'
,p_is_required=>true
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Enter the PL/SQL code to generate the HTML output.</p>',
'<p>You can reference other page or application items from within your application using bind syntax (for example <code>:P1_MY_ITEM</code>). Any items referenced also need to be included in <strong>Page Items to Submit</strong>.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(81043906611730481)
,p_plugin_id=>wwv_flow_api.id(81041461157632344)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Items to Submit'
,p_attribute_type=>'PAGE ITEMS'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>'<p>The page items submitted to the server during a refresh, and therefore, available for use within your PL/SQL Code.</p><p>You can type in the item name or pick from the list of available items. If you pick from the list and there is already text en'
||'tered then a comma is placed at the end of the existing text, followed by the item name returned from the list.<br></p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(81141616275683166)
,p_plugin_id=>wwv_flow_api.id(81041461157632344)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Items to Return'
,p_attribute_type=>'PAGE ITEMS'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>'<p>The page items you wish to return to the client after the refresh process, with their current session state.</p><p>Enter the uppercase page items set you wish to return to the client after the refresh process, based on their current value in sessi'
||'on state. If your <strong>PL/SQL Code</strong> sets one or more page item values in session state you need to define those items in this attribute.</p><p>You can type in the item name or pick from the list of available items. If you pick from the lis'
||'t and there is already text entered then a comma is placed at the end of the existing text, followed by the item name returned from the list.</p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(81142305933687618)
,p_plugin_id=>wwv_flow_api.id(81041461157632344)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Suppress Change Event'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(81141616275683166)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_help_text=>'<p>Specify whether the change event is suppressed on the items specified in <b>Page Items to Return</b>. This prevents subsequent Change based Dynamic Actions from firing, for these items.</p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(81148099826124180)
,p_plugin_id=>wwv_flow_api.id(81041461157632344)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Show Spinner'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'N'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Show a spinner while the refresh request is taking place.</p>',
'<p>Note that the spinner will not be shown if the request returns very quickly, in order to avoid flickering.</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(81148682317125392)
,p_plugin_attribute_id=>wwv_flow_api.id(81148099826124180)
,p_display_sequence=>10
,p_display_value=>'No'
,p_return_value=>'N'
,p_help_text=>'<p>Do not show a spinner.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(81149147773126202)
,p_plugin_attribute_id=>wwv_flow_api.id(81148099826124180)
,p_display_sequence=>20
,p_display_value=>'On Region'
,p_return_value=>'ON_REGION'
,p_help_text=>'<p>Show the spinner on the region.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(81158170018176744)
,p_plugin_attribute_id=>wwv_flow_api.id(81148099826124180)
,p_display_sequence=>30
,p_display_value=>'On Region with Overlay'
,p_return_value=>'ON_REGION_WITH_OVERLAY'
,p_help_text=>'<p>Adds a translucent overlay on the region which prohibits mouse inputs, and shows a spinner on top of that overlay.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(81149470620126919)
,p_plugin_attribute_id=>wwv_flow_api.id(81148099826124180)
,p_display_sequence=>40
,p_display_value=>'On Page'
,p_return_value=>'ON_PAGE'
,p_help_text=>'<p>Show a spinner centered on the whole page.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(81158644797177980)
,p_plugin_attribute_id=>wwv_flow_api.id(81148099826124180)
,p_display_sequence=>50
,p_display_value=>'On Page with Overlay'
,p_return_value=>'ON_PAGE_WITH_OVERLAY'
,p_help_text=>'<p>Adds a translucent overlay on the whole page which prohibits mouse inputs, and shows a spinner on top of that overlay.</p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(76464086014282614)
,p_plugin_id=>wwv_flow_api.id(81041461157632344)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_prompt=>'Lazy Load'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_is_translatable=>false
,p_help_text=>'<p>Only load the region when it is visible to the user i.e. shown/expanded etc.</p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(76129567666926537)
,p_plugin_id=>wwv_flow_api.id(81041461157632344)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_prompt=>'Lazy Refresh'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(76464086014282614)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_help_text=>'<p>Enable this option to lazily refresh the region i.e. only when it is visible.</p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(149724030110863449)
,p_plugin_id=>wwv_flow_api.id(81041461157632344)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>0
,p_prompt=>'Output Method'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'htp'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Choose the output method used in the code.</p>',
'<p>The plug-in needs to know from where to fetch the content in case of a refresh.</p>',
'<p>Please do not mix and match. Either use one or the other.</p>',
'<p>If you also chose option "Sanitize Output", the method <code>apex_application.g_clob_01</code> is required.</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(149725026389867850)
,p_plugin_attribute_id=>wwv_flow_api.id(149724030110863449)
,p_display_sequence=>10
,p_display_value=>'Direct output via htp.p'
,p_return_value=>'htp'
,p_help_text=>'<p>The HTP buffer via calls such as <code>htp.p</code></p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(149725367521874799)
,p_plugin_attribute_id=>wwv_flow_api.id(149724030110863449)
,p_display_sequence=>20
,p_display_value=>'Assignment to apex_application.g_clob_01'
,p_return_value=>'clob'
,p_help_text=>'<p>The content should be assigned to the global variable <code>APEX_APPLICATION.g_clob_01</code></p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(73819167694525029)
,p_plugin_id=>wwv_flow_api.id(81041461157632344)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>150
,p_prompt=>'Extra Options'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_default_value=>'substitute-values'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Extra plug-in options.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(73819940007534907)
,p_plugin_attribute_id=>wwv_flow_api.id(73819167694525029)
,p_display_sequence=>10
,p_display_value=>'Substitute Values'
,p_return_value=>'substitute-values'
,p_help_text=>'<p>Uncheck this option to skip the substitution of page item values in the PLSQL Code</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(149723079110244725)
,p_plugin_attribute_id=>wwv_flow_api.id(73819167694525029)
,p_display_sequence=>20
,p_display_value=>'Sanitize Content'
,p_return_value=>'sanitize-content'
,p_is_quick_pick=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Sanitize the content via the DOMPurify JavaScript library. This allows you to output valid HTML, while stripping away any possible Cross-Site-Scripting content.</p>',
'<p>The sanitization happens on page load, as well as after each subsequent region refresh.</p>',
'<p>The sanitization happens client-side which means you might notice a quick flash on page load, depending on the size of the region content.</p>'))
);
wwv_flow_api.create_plugin_std_attribute(
 p_id=>wwv_flow_api.id(76645530488619583)
,p_plugin_id=>wwv_flow_api.id(81041461157632344)
,p_name=>'INIT_JAVASCRIPT_CODE'
,p_is_required=>false
,p_depending_on_has_to_exist=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Using this setting you can centralize any changes using a Javascript function e.g.</p>',
'<pre>',
'function(options) {',
'   // when lazy loading we can customize how long after the "apexreadyend" we wait before checking if the region is visible',
'   options.visibilityCheckDelay = 2000; // milliseconds',
'}',
'</pre>'))
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A20676C6F62616C7320617065782C24202A2F0A0A76617220464F53203D2077696E646F772E464F53207C7C207B7D3B0A464F532E726567696F6E203D20464F532E726567696F6E207C7C207B7D3B0A0A2F2A2A0A202A20496E697469616C697A6174';
wwv_flow_api.g_varchar2_table(2) := '696F6E2066756E6374696F6E20666F72207468652064796E616D696320636F6E74656E7420726567696F6E2E0A202A20546869732066756E6374696F6E206D7573742062652072756E20666F722074686520726567696F6E20746F207375627363726962';
wwv_flow_api.g_varchar2_table(3) := '6520746F207468652072656672657368206576656E740A202A20496E70757420706172616D6574657220697320616E206F626A65637420776974682074686520666F6C6C6F77696E6720617474726962757465733A0A202A0A202A2040706172616D207B';
wwv_flow_api.g_varchar2_table(4) := '6F626A6563747D202020636F6E66696720202020202020202020202020202020202020202020202020436F6E66696775726174696F6E206F626A65637420686F6C64696E6720616C6C20617474726962757465730A202A2040706172616D207B73747269';
wwv_flow_api.g_varchar2_table(5) := '6E677D202020636F6E6669672E616A61784964656E74696669657220202020202020202020416A6178204964656E746966696572206E656564656420627920617065782E7365727665722E706C7567696E0A202A2040706172616D207B737472696E677D';
wwv_flow_api.g_varchar2_table(6) := '202020636F6E6669672E726567696F6E496420202020202020202020202020202020546865206D61696E20726567696F6E2069642E2054686520726567696F6E206F6E207768696368202272656672657368222063616E20626520747269676765726564';
wwv_flow_api.g_varchar2_table(7) := '0A202A2040706172616D207B737472696E677D202020636F6E6669672E726567696F6E5772617070657249642020202020202020204964206F66207772617070657220726567696F6E2E2054686520636F6E74656E7473206F66207468697320656C656D';
wwv_flow_api.g_varchar2_table(8) := '656E742077696C6C206265207265706C61636564207769746820746865206E657720636F6E74656E740A202A2040706172616D207B737472696E677D2020205B636F6E6669672E6974656D73546F5375626D69745D202020202020202020436F6D6D612D';
wwv_flow_api.g_varchar2_table(9) := '7365706172617465642070616765206974656D206E616D657320696E206A51756572792073656C6563746F7220666F726D61740A202A2040706172616D207B626F6F6C65616E7D20205B636F6E6669672E73757070726573734368616E67654576656E74';
wwv_flow_api.g_varchar2_table(10) := '5D2020204966207468657265206172652070616765206974656D7320746F2062652072657475726E65642C20746869732064656369646573207768657468657220746F20747269676765722061206368616E6765206576656E74206F72206E6F740A202A';
wwv_flow_api.g_varchar2_table(11) := '2040706172616D207B626F6F6C65616E7D20205B636F6E6669672E73686F775370696E6E65725D202020202020202020202053686F77732061207370696E6E6572206F72206E6F740A202A2040706172616D207B626F6F6C65616E7D20205B636F6E6669';
wwv_flow_api.g_varchar2_table(12) := '672E73686F775370696E6E65724F7665726C61795D20202020446570656E6473206F6E2073686F775370696E6E65722E20416464732061207472616E736C7563656E74206F7665726C617920626568696E6420746865207370696E6E65720A202A204070';
wwv_flow_api.g_varchar2_table(13) := '6172616D207B737472696E677D2020205B636F6E6669672E7370696E6E6572506F736974696F6E5D20202020202020446570656E6473206F6E2073686F775370696E6E65722E2041206A51756572792073656C6563746F7220756E746F20776869636820';
wwv_flow_api.g_varchar2_table(14) := '746865207370696E6E65722077696C6C2062652073686F776E0A202A2040706172616D207B626F6F6C65616E7D20205B636F6E6669672E73616E6974697A65436F6E74656E745D202020202020205768657468657220746F20706173732074686520636F';
wwv_flow_api.g_varchar2_table(15) := '6E74656E74207468726F75676820444F4D5075726966790A202A2040706172616D207B6F626A6563747D2020205B636F6E6669672E444F4D507572696679436F6E6669675D202020202020204164646974696F6E616C206F7074696F6E7320746F206265';
wwv_flow_api.g_varchar2_table(16) := '2070617373656420746F20444F4D5075726966792E2053616E6974697A6520436F6E74656E74206D75737420626520656E61626C65642E0A202A2040706172616D207B737472696E677D2020205B636F6E6669672E696E697469616C436F6E74656E745D';
wwv_flow_api.g_varchar2_table(17) := '202020202020202054686520696E697469616C20636F6E74656E7420746F206265206170706C6965642073686F776E2069662073616E6974697A65436F6E74656E7420697320656E61626C656420616E64206C617A794C6F61642069732064697361626C';
wwv_flow_api.g_varchar2_table(18) := '65640A202A2040706172616D207B66756E6374696F6E7D20696E6974466E20202020202020202020202020202020202020202020202020496E697469616C697A6174696F6E204A6176615363726970742046756E6374696F6E20746F206368616E676520';
wwv_flow_api.g_varchar2_table(19) := '74686520636F6E66696775726174696F6E2061742072756E2D74696D650A202A2F0A464F532E726567696F6E2E706C73716C44796E616D6963436F6E74656E74203D2066756E6374696F6E2028636F6E6669672C20696E6974466E29207B0A0A20202020';
wwv_flow_api.g_varchar2_table(20) := '76617220706C7567696E4E616D65203D2027464F53202D20504C2F53514C2044796E616D696320436F6E74656E74273B0A20202020617065782E64656275672E696E666F28706C7567696E4E616D652C20636F6E6669672C20696E6974466E293B0A0A20';
wwv_flow_api.g_varchar2_table(21) := '20202076617220636F6E74657874203D20746869732C20656C243B0A20202020656C24203D20636F6E6669672E656C24203D202428272327202B20636F6E6669672E726567696F6E4964293B0A202020200A202020202F2F20416C6C6F77207468652064';
wwv_flow_api.g_varchar2_table(22) := '6576656C6F70657220746F20706572666F726D20616E79206C617374202863656E7472616C697A656429206368616E676573207573696E67204A61766173637269707420496E697469616C697A6174696F6E20436F64650A2020202069662028696E6974';
wwv_flow_api.g_varchar2_table(23) := '466E20696E7374616E63656F662046756E6374696F6E29207B0A2020202020202020696E6974466E2E63616C6C28636F6E746578742C20636F6E666967293B0A202020207D0A0A202020202F2F696D706C656D656E74696E672074686520617065782E72';
wwv_flow_api.g_varchar2_table(24) := '6567696F6E20696E7465726661636520696E206F7264657220746F20726573706F6E6420746F2072656672657368206576656E74730A20202020617065782E726567696F6E2E63726561746528636F6E6669672E726567696F6E49642C207B0A20202020';
wwv_flow_api.g_varchar2_table(25) := '20202020747970653A2027666F732D726567696F6E2D706C73716C2D64796E616D69632D636F6E74656E74272C0A2020202020202020726566726573683A2066756E6374696F6E202829207B0A20202020202020202020202069662028636F6E6669672E';
wwv_flow_api.g_varchar2_table(26) := '697356697369626C65207C7C2021636F6E6669672E6C617A795265667265736829207B0A20202020202020202020202020202020464F532E726567696F6E2E706C73716C44796E616D6963436F6E74656E742E726566726573682E63616C6C28636F6E74';
wwv_flow_api.g_varchar2_table(27) := '6578742C20636F6E666967293B0A2020202020202020202020207D20656C7365207B0A20202020202020202020202020202020636F6E6669672E6E6565647352656672657368203D20747275653B0A2020202020202020202020207D0A20202020202020';
wwv_flow_api.g_varchar2_table(28) := '207D2C0A20202020202020206F7074696F6E3A2066756E6374696F6E20286E616D652C2076616C756529207B0A2020202020202020202020207661722077686974654C6973744F7074696F6E73203D205B276C6F61646564272C276E6565647352656672';
wwv_flow_api.g_varchar2_table(29) := '657368272C2773686F775370696E6E65724F7665726C6179272C277370696E6E6572506F736974696F6E272C277669736962696C697479436865636B44656C6179275D3B0A20202020202020202020202076617220617267436F756E74203D2061726775';
wwv_flow_api.g_varchar2_table(30) := '6D656E74732E6C656E6774683B0A20202020202020202020202069662028617267436F756E74203D3D3D203129207B0A2020202020202020202020202020202072657475726E20636F6E6669675B6E616D655D3B0A2020202020202020202020207D2065';
wwv_flow_api.g_varchar2_table(31) := '6C73652069662028617267436F756E74203E203129207B0A20202020202020202020202020202020696620286E616D652026262076616C75652026262077686974654C6973744F7074696F6E732E696E636C75646573286E616D652929207B0A20202020';
wwv_flow_api.g_varchar2_table(32) := '20202020202020202020202020202020636F6E6669675B6E616D655D203D2076616C75653B0A202020202020202020202020202020207D20656C736520696620286E616D65202626202177686974654C6973744F7074696F6E732E696E636C7564657328';
wwv_flow_api.g_varchar2_table(33) := '6E616D652929207B0A2020202020202020202020202020202020202020617065782E64656275672E7761726E2827796F752061726520747279696E6720746F2073657420616E206F7074696F6E2074686174206973206E6F7420616C6C6F7765643A2027';
wwv_flow_api.g_varchar2_table(34) := '202B206E616D65293B0A202020202020202020202020202020207D0A2020202020202020202020207D0A20202020202020207D0A202020207D293B0A0A20202020696628636F6E6669672E73616E6974697A65436F6E74656E7420262620636F6E666967';
wwv_flow_api.g_varchar2_table(35) := '2E696E697469616C436F6E74656E74297B0A202020202020202076617220636F6E74656E74203D20444F4D5075726966792E73616E6974697A6528636F6E6669672E696E697469616C436F6E74656E742C20636F6E6669672E444F4D507572696679436F';
wwv_flow_api.g_varchar2_table(36) := '6E666967207C7C207B7D293B0A20202020202020202428272327202B20636F6E6669672E726567696F6E577261707065724964292E68746D6C28636F6E74656E74293B0A202020207D0A0A202020202F2F20636865636B206966207765206E6565642074';
wwv_flow_api.g_varchar2_table(37) := '6F206C617A79206C6F61642074686520726567696F6E0A2020202069662028636F6E6669672E6C617A794C6F616429207B0A2020202020202020617065782E7769646765742E7574696C2E6F6E5669736962696C6974794368616E676528656C245B305D';
wwv_flow_api.g_varchar2_table(38) := '2C2066756E6374696F6E2028697356697369626C6529207B0A202020202020202020202020636F6E6669672E697356697369626C65203D20697356697369626C653B0A20202020202020202020202069662028697356697369626C65202626202821636F';
wwv_flow_api.g_varchar2_table(39) := '6E6669672E6C6F61646564207C7C20636F6E6669672E6E65656473526566726573682929207B0A20202020202020202020202020202020617065782E726567696F6E28636F6E6669672E726567696F6E4964292E7265667265736828293B0A2020202020';
wwv_flow_api.g_varchar2_table(40) := '2020202020202020202020636F6E6669672E6C6F61646564203D20747275653B0A20202020202020202020202020202020636F6E6669672E6E6565647352656672657368203D2066616C73653B0A2020202020202020202020207D0A2020202020202020';
wwv_flow_api.g_varchar2_table(41) := '7D293B0A2020202020202020617065782E6A51756572792877696E646F77292E6F6E2827617065787265616479656E64272C2066756E6374696F6E202829207B0A2020202020202020202020202F2F2077652061646420617661726961626C6520726566';
wwv_flow_api.g_varchar2_table(42) := '6572656E636520746F2061766F6964206C6F7373206F662073636F70650A20202020202020202020202076617220656C203D20656C245B305D3B0A2020202020202020202020202F2F207765206861766520746F20616464206120736C69676874206465';
wwv_flow_api.g_varchar2_table(43) := '6C617920746F206D616B65207375726520617065782077696467657473206861766520696E697469616C697A65642073696E6365202873757270726973696E676C79292022617065787265616479656E6422206973206E6F7420656E6F7567680A202020';
wwv_flow_api.g_varchar2_table(44) := '20202020202020202073657454696D656F75742866756E6374696F6E202829207B0A20202020202020202020202020202020617065782E7769646765742E7574696C2E7669736962696C6974794368616E676528656C2C2074727565293B0A2020202020';
wwv_flow_api.g_varchar2_table(45) := '202020202020207D2C20636F6E6669672E7669736962696C697479436865636B44656C6179207C7C2031303030293B0A20202020202020207D293B0A202020207D0A7D3B0A0A464F532E726567696F6E2E706C73716C44796E616D6963436F6E74656E74';
wwv_flow_api.g_varchar2_table(46) := '2E72656672657368203D2066756E6374696F6E2028636F6E66696729207B0A20202020766172206C6F6164696E67496E64696361746F72466E3B0A202020202F2F636F6E66696775726573207468652073686F77696E6720616E6420686964696E67206F';
wwv_flow_api.g_varchar2_table(47) := '66206120706F737369626C65207370696E6E65720A2020202069662028636F6E6669672E73686F775370696E6E657229207B0A20202020202020206C6F6164696E67496E64696361746F72466E203D202866756E6374696F6E2028706F736974696F6E2C';
wwv_flow_api.g_varchar2_table(48) := '2073686F774F7665726C617929207B0A2020202020202020202020207661722066697865644F6E426F6479203D20706F736974696F6E203D3D2027626F6479273B0A20202020202020202020202072657475726E2066756E6374696F6E2028704C6F6164';
wwv_flow_api.g_varchar2_table(49) := '696E67496E64696361746F7229207B0A20202020202020202020202020202020766172206F7665726C6179243B0A20202020202020202020202020202020766172207370696E6E657224203D20617065782E7574696C2E73686F775370696E6E65722870';
wwv_flow_api.g_varchar2_table(50) := '6F736974696F6E2C207B2066697865643A2066697865644F6E426F6479207D293B0A202020202020202020202020202020206966202873686F774F7665726C617929207B0A20202020202020202020202020202020202020206F7665726C617924203D20';
wwv_flow_api.g_varchar2_table(51) := '2428273C64697620636C6173733D22666F732D726567696F6E2D6F7665726C617927202B202866697865644F6E426F6479203F20272D666978656427203A20272729202B2027223E3C2F6469763E27292E70726570656E64546F28706F736974696F6E29';
wwv_flow_api.g_varchar2_table(52) := '3B0A202020202020202020202020202020207D0A2020202020202020202020202020202066756E6374696F6E2072656D6F76655370696E6E65722829207B0A2020202020202020202020202020202020202020696620286F7665726C61792429207B0A20';
wwv_flow_api.g_varchar2_table(53) := '20202020202020202020202020202020202020202020206F7665726C6179242E72656D6F766528293B0A20202020202020202020202020202020202020207D0A20202020202020202020202020202020202020207370696E6E6572242E72656D6F766528';
wwv_flow_api.g_varchar2_table(54) := '293B0A202020202020202020202020202020207D0A202020202020202020202020202020202F2F746869732066756E6374696F6E206D7573742072657475726E20612066756E6374696F6E2077686963682068616E646C6573207468652072656D6F7669';
wwv_flow_api.g_varchar2_table(55) := '6E67206F6620746865207370696E6E65720A2020202020202020202020202020202072657475726E2072656D6F76655370696E6E65723B0A2020202020202020202020207D3B0A20202020202020207D2928636F6E6669672E7370696E6E6572506F7369';
wwv_flow_api.g_varchar2_table(56) := '74696F6E2C20636F6E6669672E73686F775370696E6E65724F7665726C6179293B0A202020207D0A0A202020202F2F2074726967676572206F7572206265666F72652072656672657368206576656E7420616C6C6F77696E6720666F7220612064657665';
wwv_flow_api.g_varchar2_table(57) := '6C6F70657220746F20736B69702074686520726566726573682062792072657475726E696E672066616C73650A20202020766172206576656E7443616E63656C6C6564203D20617065782E6576656E742E747269676765722827617065786265666F7265';
wwv_flow_api.g_varchar2_table(58) := '72656672657368272C20272327202B20636F6E6669672E726567696F6E49642C20636F6E666967293B0A20202020696620286576656E7443616E63656C6C656429207B0A2020202020202020617065782E64656275672E7761726E282774686520726566';
wwv_flow_api.g_varchar2_table(59) := '7265736820616374696F6E20686173206265656E2063616E63656C6C6564206279207468652022617065786265666F72657265667265736822206576656E742127293B0A202020202020202072657475726E2066616C73653B0A202020207D0A20202020';
wwv_flow_api.g_varchar2_table(60) := '617065782E7365727665722E706C7567696E28636F6E6669672E616A61784964656E7469666965722C207B0A2020202020202020706167654974656D733A20636F6E6669672E6974656D73546F5375626D69740A202020207D2C207B0A20202020202020';
wwv_flow_api.g_varchar2_table(61) := '202F2F6E656564656420746F2074726967676572206265666F726520616E642061667465722072656672657368206576656E7473206F6E2074686520726567696F6E0A2020202020202020726566726573684F626A6563743A20272327202B20636F6E66';
wwv_flow_api.g_varchar2_table(62) := '69672E726567696F6E49642C0A20202020202020202F2F746869732066756E6374696F6E206973207265706F6E7369626C6520666F722073686F77696E672061207370696E6E65720A20202020202020206C6F6164696E67496E64696361746F723A206C';
wwv_flow_api.g_varchar2_table(63) := '6F6164696E67496E64696361746F72466E2C0A2020202020202020737563636573733A2066756E6374696F6E20286461746129207B0A2020202020202020202020202F2F73657474696E672070616765206974656D2076616C7565730A20202020202020';
wwv_flow_api.g_varchar2_table(64) := '202020202069662028646174612E6974656D7329207B0A20202020202020202020202020202020666F7220287661722069203D20303B2069203C20646174612E6974656D732E6C656E6774683B20692B2B29207B0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(65) := '2020202020617065782E6974656D28646174612E6974656D735B695D2E6964292E73657456616C756528646174612E6974656D735B695D2E76616C75652C206E756C6C2C20636F6E6669672E73757070726573734368616E67654576656E74293B0A2020';
wwv_flow_api.g_varchar2_table(66) := '20202020202020202020202020207D0A2020202020202020202020207D0A2020202020202020202020202F2F7265706C6163696E6720746865206F6C6420636F6E74656E74207769746820746865206E65770A2020202020202020202020207661722063';
wwv_flow_api.g_varchar2_table(67) := '6F6E74656E74203D20646174612E636F6E74656E743B0A202020202020202020202020696628636F6E6669672E73616E6974697A65436F6E74656E74297B0A20202020202020202020202020202020636F6E74656E74203D20444F4D5075726966792E73';
wwv_flow_api.g_varchar2_table(68) := '616E6974697A6528636F6E74656E742C20636F6E6669672E444F4D507572696679436F6E666967207C7C207B7D293B0A2020202020202020202020207D0A2020202020202020202020202428272327202B20636F6E6669672E726567696F6E5772617070';
wwv_flow_api.g_varchar2_table(69) := '65724964292E68746D6C28636F6E74656E74293B0A2020202020202020202020202F2F2074726967676572206F75722061667465722072656672657368206576656E742873290A202020202020202020202020617065782E6576656E742E747269676765';
wwv_flow_api.g_varchar2_table(70) := '72282761706578616674657272656672657368272C20272327202B20636F6E6669672E726567696F6E49642C20636F6E666967293B0A20202020202020207D2C0A20202020202020202F2F6F6D697474696E6720616E206572726F722068616E646C6572';
wwv_flow_api.g_varchar2_table(71) := '206C65747320617065782E73657276657220757365207468652064656661756C74206F6E650A202020202020202064617461547970653A20276A736F6E270A202020207D293B0A7D3B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(81151645154736990)
,p_plugin_id=>wwv_flow_api.id(81041461157632344)
,p_file_name=>'js/script.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '76617220464F533D77696E646F772E464F537C7C7B7D3B464F532E726567696F6E3D464F532E726567696F6E7C7C7B7D2C464F532E726567696F6E2E706C73716C44796E616D6963436F6E74656E743D66756E6374696F6E28652C6E297B617065782E64';
wwv_flow_api.g_varchar2_table(2) := '656275672E696E666F2822464F53202D20504C2F53514C2044796E616D696320436F6E74656E74222C652C6E293B76617220692C723D746869733B696628693D652E656C243D24282223222B652E726567696F6E4964292C6E20696E7374616E63656F66';
wwv_flow_api.g_varchar2_table(3) := '2046756E6374696F6E26266E2E63616C6C28722C65292C617065782E726567696F6E2E63726561746528652E726567696F6E49642C7B747970653A22666F732D726567696F6E2D706C73716C2D64796E616D69632D636F6E74656E74222C726566726573';
wwv_flow_api.g_varchar2_table(4) := '683A66756E6374696F6E28297B652E697356697369626C657C7C21652E6C617A79526566726573683F464F532E726567696F6E2E706C73716C44796E616D6963436F6E74656E742E726566726573682E63616C6C28722C65293A652E6E65656473526566';
wwv_flow_api.g_varchar2_table(5) := '726573683D21307D2C6F7074696F6E3A66756E6374696F6E286E2C69297B76617220723D5B226C6F61646564222C226E6565647352656672657368222C2273686F775370696E6E65724F7665726C6179222C227370696E6E6572506F736974696F6E222C';
wwv_flow_api.g_varchar2_table(6) := '227669736962696C697479436865636B44656C6179225D2C743D617267756D656E74732E6C656E6774683B696628313D3D3D742972657475726E20655B6E5D3B743E312626286E2626692626722E696E636C75646573286E293F655B6E5D3D693A6E2626';
wwv_flow_api.g_varchar2_table(7) := '21722E696E636C75646573286E292626617065782E64656275672E7761726E2822796F752061726520747279696E6720746F2073657420616E206F7074696F6E2074686174206973206E6F7420616C6C6F7765643A20222B6E29297D7D292C652E73616E';
wwv_flow_api.g_varchar2_table(8) := '6974697A65436F6E74656E742626652E696E697469616C436F6E74656E74297B76617220743D444F4D5075726966792E73616E6974697A6528652E696E697469616C436F6E74656E742C652E444F4D507572696679436F6E6669677C7C7B7D293B242822';
wwv_flow_api.g_varchar2_table(9) := '23222B652E726567696F6E577261707065724964292E68746D6C2874297D652E6C617A794C6F6164262628617065782E7769646765742E7574696C2E6F6E5669736962696C6974794368616E676528695B305D2C2866756E6374696F6E286E297B652E69';
wwv_flow_api.g_varchar2_table(10) := '7356697369626C653D6E2C216E7C7C652E6C6F61646564262621652E6E65656473526566726573687C7C28617065782E726567696F6E28652E726567696F6E4964292E7265667265736828292C652E6C6F616465643D21302C652E6E6565647352656672';
wwv_flow_api.g_varchar2_table(11) := '6573683D2131297D29292C617065782E6A51756572792877696E646F77292E6F6E2822617065787265616479656E64222C2866756E6374696F6E28297B766172206E3D695B305D3B73657454696D656F7574282866756E6374696F6E28297B617065782E';
wwv_flow_api.g_varchar2_table(12) := '7769646765742E7574696C2E7669736962696C6974794368616E6765286E2C2130297D292C652E7669736962696C697479436865636B44656C61797C7C316533297D2929297D2C464F532E726567696F6E2E706C73716C44796E616D6963436F6E74656E';
wwv_flow_api.g_varchar2_table(13) := '742E726566726573683D66756E6374696F6E2865297B766172206E2C692C722C743B696628652E73686F775370696E6E6572262628693D652E7370696E6E6572506F736974696F6E2C723D652E73686F775370696E6E65724F7665726C61792C743D2262';
wwv_flow_api.g_varchar2_table(14) := '6F6479223D3D692C6E3D66756E6374696F6E2865297B766172206E2C6F3D617065782E7574696C2E73686F775370696E6E657228692C7B66697865643A747D293B72657475726E20722626286E3D2428273C64697620636C6173733D22666F732D726567';
wwv_flow_api.g_varchar2_table(15) := '696F6E2D6F7665726C6179272B28743F222D6669786564223A2222292B27223E3C2F6469763E27292E70726570656E64546F286929292C66756E6374696F6E28297B6E26266E2E72656D6F766528292C6F2E72656D6F766528297D7D292C617065782E65';
wwv_flow_api.g_varchar2_table(16) := '76656E742E747269676765722822617065786265666F726572656672657368222C2223222B652E726567696F6E49642C65292972657475726E20617065782E64656275672E7761726E2827746865207265667265736820616374696F6E20686173206265';
wwv_flow_api.g_varchar2_table(17) := '656E2063616E63656C6C6564206279207468652022617065786265666F72657265667265736822206576656E742127292C21313B617065782E7365727665722E706C7567696E28652E616A61784964656E7469666965722C7B706167654974656D733A65';
wwv_flow_api.g_varchar2_table(18) := '2E6974656D73546F5375626D69747D2C7B726566726573684F626A6563743A2223222B652E726567696F6E49642C6C6F6164696E67496E64696361746F723A6E2C737563636573733A66756E6374696F6E286E297B6966286E2E6974656D7329666F7228';
wwv_flow_api.g_varchar2_table(19) := '76617220693D303B693C6E2E6974656D732E6C656E6774683B692B2B29617065782E6974656D286E2E6974656D735B695D2E6964292E73657456616C7565286E2E6974656D735B695D2E76616C75652C6E756C6C2C652E73757070726573734368616E67';
wwv_flow_api.g_varchar2_table(20) := '654576656E74293B76617220723D6E2E636F6E74656E743B652E73616E6974697A65436F6E74656E74262628723D444F4D5075726966792E73616E6974697A6528722C652E444F4D507572696679436F6E6669677C7C7B7D29292C24282223222B652E72';
wwv_flow_api.g_varchar2_table(21) := '6567696F6E577261707065724964292E68746D6C2872292C617065782E6576656E742E74726967676572282261706578616674657272656672657368222C2223222B652E726567696F6E49642C65297D2C64617461547970653A226A736F6E227D297D3B';
wwv_flow_api.g_varchar2_table(22) := '0A2F2F2320736F757263654D617070696E6755524C3D7363726970742E6A732E6D6170';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(81151892586737021)
,p_plugin_id=>wwv_flow_api.id(81041461157632344)
,p_file_name=>'js/script.min.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '7B2276657273696F6E223A332C22736F7572636573223A5B227363726970742E6A73225D2C226E616D6573223A5B22464F53222C2277696E646F77222C22726567696F6E222C22706C73716C44796E616D6963436F6E74656E74222C22636F6E66696722';
wwv_flow_api.g_varchar2_table(2) := '2C22696E6974466E222C2261706578222C226465627567222C22696E666F222C22656C24222C22636F6E74657874222C2274686973222C2224222C22726567696F6E4964222C2246756E6374696F6E222C2263616C6C222C22637265617465222C227479';
wwv_flow_api.g_varchar2_table(3) := '7065222C2272656672657368222C22697356697369626C65222C226C617A7952656672657368222C226E6565647352656672657368222C226F7074696F6E222C226E616D65222C2276616C7565222C2277686974654C6973744F7074696F6E73222C2261';
wwv_flow_api.g_varchar2_table(4) := '7267436F756E74222C22617267756D656E7473222C226C656E677468222C22696E636C75646573222C227761726E222C2273616E6974697A65436F6E74656E74222C22696E697469616C436F6E74656E74222C22636F6E74656E74222C22444F4D507572';
wwv_flow_api.g_varchar2_table(5) := '696679222C2273616E6974697A65222C22444F4D507572696679436F6E666967222C22726567696F6E577261707065724964222C2268746D6C222C226C617A794C6F6164222C22776964676574222C227574696C222C226F6E5669736962696C69747943';
wwv_flow_api.g_varchar2_table(6) := '68616E6765222C226C6F61646564222C226A5175657279222C226F6E222C22656C222C2273657454696D656F7574222C227669736962696C6974794368616E6765222C227669736962696C697479436865636B44656C6179222C226C6F6164696E67496E';
wwv_flow_api.g_varchar2_table(7) := '64696361746F72466E222C22706F736974696F6E222C2273686F774F7665726C6179222C2266697865644F6E426F6479222C2273686F775370696E6E6572222C227370696E6E6572506F736974696F6E222C2273686F775370696E6E65724F7665726C61';
wwv_flow_api.g_varchar2_table(8) := '79222C22704C6F6164696E67496E64696361746F72222C226F7665726C617924222C227370696E6E657224222C226669786564222C2270726570656E64546F222C2272656D6F7665222C226576656E74222C2274726967676572222C2273657276657222';
wwv_flow_api.g_varchar2_table(9) := '2C22706C7567696E222C22616A61784964656E746966696572222C22706167654974656D73222C226974656D73546F5375626D6974222C22726566726573684F626A656374222C226C6F6164696E67496E64696361746F72222C2273756363657373222C';
wwv_flow_api.g_varchar2_table(10) := '2264617461222C226974656D73222C2269222C226974656D222C226964222C2273657456616C7565222C2273757070726573734368616E67654576656E74222C226461746154797065225D2C226D617070696E6773223A22414145412C49414149412C49';
wwv_flow_api.g_varchar2_table(11) := '41414D432C4F41414F442C4B41414F2C4741437842412C49414149452C4F414153462C49414149452C514141552C474171423342462C49414149452C4F41414F432C6F42414173422C53414155432C45414151432C4741472F43432C4B41414B432C4D41';
wwv_flow_api.g_varchar2_table(12) := '414D432C4B41444D2C2B424143574A2C45414151432C47414570432C4941416F42492C4541416842432C45414155432C4B416943642C4741684341462C4541414D4C2C4541414F4B2C4941414D472C454141452C4941414D522C4541414F532C55414739';
wwv_flow_api.g_varchar2_table(13) := '42522C6141416B42532C5541436C42542C4541414F552C4B41414B4C2C454141534E2C4741497A42452C4B41414B4A2C4F41414F632C4F41414F5A2C4541414F532C534141552C4341436843492C4B41414D2C6D4341434E432C514141532C5741434464';
wwv_flow_api.g_varchar2_table(14) := '2C4541414F652C59414163662C4541414F67422C594143354270422C49414149452C4F41414F432C6F4241416F42652C51414151482C4B41414B4C2C454141534E2C4741457244412C4541414F69422C634141652C4741473942432C4F4141512C534141';
wwv_flow_api.g_varchar2_table(15) := '55432C4541414D432C47414370422C49414149432C4541416D422C434141432C534141532C654141652C7142414171422C6B4241416B422C774241436E46432C45414157432C55414155432C4F41437A422C47414169422C49414162462C454143412C4F';
wwv_flow_api.g_varchar2_table(16) := '41414F74422C4541414F6D422C47414350472C454141572C49414364482C47414151432C47414153432C4541416942492C534141534E2C47414333436E422C4541414F6D422C47414151432C45414352442C49414153452C4541416942492C534141534E';
wwv_flow_api.g_varchar2_table(17) := '2C49414331436A422C4B41414B432C4D41414D75422C4B41414B2C774441413044502C4F414D76466E422C4541414F32422C694241416D4233422C4541414F34422C654141652C4341432F432C49414149432C45414155432C55414155432C534141532F';
wwv_flow_api.g_varchar2_table(18) := '422C4541414F34422C654141674235422C4541414F67432C694241416D422C4941436C4678422C454141452C4941414D522C4541414F69432C694241416942432C4B41414B4C2C474149724337422C4541414F6D432C574143506A432C4B41414B6B432C';
wwv_flow_api.g_varchar2_table(19) := '4F41414F432C4B41414B432C6D4241416D426A432C454141492C494141492C53414155552C4741436C44662C4541414F652C55414159412C47414366412C47414165662C4541414F75432C5341415576432C4541414F69422C6541437643662C4B41414B';
wwv_flow_api.g_varchar2_table(20) := '4A2C4F41414F452C4541414F532C554141554B2C5541433742642C4541414F75432C514141532C454143684276432C4541414F69422C634141652C4D41473942662C4B41414B73432C4F41414F33432C5141415134432C474141472C6742414167422C57';
wwv_flow_api.g_varchar2_table(21) := '41456E432C49414149432C4541414B72432C454141492C4741456273432C594141572C574143507A432C4B41414B6B432C4F41414F432C4B41414B4F2C694241416942462C474141492C4B4143764331432C4541414F36432C7342414177422C55414B39';
wwv_flow_api.g_varchar2_table(22) := '436A442C49414149452C4F41414F432C6F4241416F42652C514141552C53414155642C4741432F432C4941414938432C4541476743432C45414155432C4541436C43432C454171425A2C47417642496A442C4541414F6B442C6341437942482C45416942';
wwv_flow_api.g_varchar2_table(23) := '37422F432C4541414F6D442C6742416A426743482C454169426668442C4541414F6F442C6D424168423142482C45414130422C5141415A462C4541447442442C454145572C534141554F2C474143622C49414149432C45414341432C4541415772442C4B';
wwv_flow_api.g_varchar2_table(24) := '41414B6D432C4B41414B612C59414159482C454141552C43414145532C4D41414F502C49415778442C4F415649442C494143414D2C4541415739432C454141452C6B4341416F4379432C454141632C534141572C4941414D2C59414159512C5541415556';
wwv_flow_api.g_varchar2_table(25) := '2C49414531472C574143514F2C47414341412C45414153492C53414562482C45414153472C5941534A78442C4B41414B79442C4D41414D432C514141512C6F42414171422C4941414D35442C4541414F532C53414155542C47414768462C4F414441452C';
wwv_flow_api.g_varchar2_table(26) := '4B41414B432C4D41414D75422C4B41414B2C34454143542C4541455878422C4B41414B32442C4F41414F432C4F41414F39442C4541414F2B442C65414167422C4341437443432C5541415768452C4541414F69452C6541436E422C43414543432C634141';
wwv_flow_api.g_varchar2_table(27) := '652C4941414D6C452C4541414F532C534145354230442C694241416B4272422C4541436C4273422C514141532C53414155432C474145662C47414149412C4541414B432C4D41434C2C4941414B2C49414149432C454141492C45414147412C4541414946';
wwv_flow_api.g_varchar2_table(28) := '2C4541414B432C4D41414D39432C4F4141512B432C4941436E4372452C4B41414B73452C4B41414B482C4541414B432C4D41414D432C47414147452C49414149432C534141534C2C4541414B432C4D41414D432C474141476E442C4D41414F2C4B41414D';
wwv_flow_api.g_varchar2_table(29) := '70422C4541414F32452C714241492F452C4941414939432C4541415577432C4541414B78432C514143684237422C4541414F32422C6B4241434E452C45414155432C55414155432C53414153462C4541415337422C4541414F67432C694241416D422C4B';
wwv_flow_api.g_varchar2_table(30) := '4145704578422C454141452C4941414D522C4541414F69432C694241416942432C4B41414B4C2C474145724333422C4B41414B79442C4D41414D432C514141512C6D4241416F422C4941414D35442C4541414F532C53414155542C4941476C4534452C53';
wwv_flow_api.g_varchar2_table(31) := '414155222C2266696C65223A227363726970742E6A73227D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(81152288422737037)
,p_plugin_id=>wwv_flow_api.id(81041461157632344)
,p_file_name=>'js/script.js.map'
,p_mime_type=>'application/json'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E666F732D726567696F6E2D6F7665726C61792C2E666F732D726567696F6E2D6F7665726C61792D66697865647B706F736974696F6E3A6162736F6C7574653B7A2D696E6465783A3435303B7669736962696C6974793A76697369626C653B7769647468';
wwv_flow_api.g_varchar2_table(2) := '3A313030253B6865696768743A313030253B6261636B67726F756E643A72676261283235352C3235352C3235352C2E35297D2E666F732D726567696F6E2D6F7665726C61792D66697865647B706F736974696F6E3A66697865647D0A2F2A2320736F7572';
wwv_flow_api.g_varchar2_table(3) := '63654D617070696E6755524C3D7374796C652E6373732E6D61702A2F';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(81165297140121148)
,p_plugin_id=>wwv_flow_api.id(81041461157632344)
,p_file_name=>'css/style.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '7B2276657273696F6E223A332C22736F7572636573223A5B227374796C652E637373225D2C226E616D6573223A5B5D2C226D617070696E6773223A22414141412C6D422C434153412C79422C434152492C69422C434143412C572C434143412C6B422C43';
wwv_flow_api.g_varchar2_table(2) := '4143412C552C434143412C572C434143412C2B422C4341474A2C79422C434143492C63222C2266696C65223A227374796C652E637373222C22736F7572636573436F6E74656E74223A5B222E666F732D726567696F6E2D6F7665726C61797B5C6E202020';
wwv_flow_api.g_varchar2_table(3) := '20706F736974696F6E3A206162736F6C7574653B5C6E202020207A2D696E6465783A203435303B5C6E202020207669736962696C6974793A2076697369626C653B5C6E2020202077696474683A20313030253B5C6E202020206865696768743A20313030';
wwv_flow_api.g_varchar2_table(4) := '253B5C6E202020206261636B67726F756E643A2072676261283235352C203235352C203235352C20302E35293B5C6E7D5C6E5C6E2E666F732D726567696F6E2D6F7665726C61792D66697865647B5C6E20202020706F736974696F6E3A2066697865643B';
wwv_flow_api.g_varchar2_table(5) := '5C6E202020207A2D696E6465783A203435303B5C6E202020207669736962696C6974793A2076697369626C653B5C6E2020202077696474683A20313030253B5C6E202020206865696768743A20313030253B5C6E202020206261636B67726F756E643A20';
wwv_flow_api.g_varchar2_table(6) := '72676261283235352C203235352C203235352C20302E35293B5C6E7D5C6E5C6E225D7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(81165583761121174)
,p_plugin_id=>wwv_flow_api.id(81041461157632344)
,p_file_name=>'css/style.css.map'
,p_mime_type=>'application/json'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E666F732D726567696F6E2D6F7665726C61797B0A20202020706F736974696F6E3A206162736F6C7574653B0A202020207A2D696E6465783A203435303B0A202020207669736962696C6974793A2076697369626C653B0A2020202077696474683A2031';
wwv_flow_api.g_varchar2_table(2) := '3030253B0A202020206865696768743A20313030253B0A202020206261636B67726F756E643A2072676261283235352C203235352C203235352C20302E35293B0A7D0A0A2E666F732D726567696F6E2D6F7665726C61792D66697865647B0A2020202070';
wwv_flow_api.g_varchar2_table(3) := '6F736974696F6E3A2066697865643B0A202020207A2D696E6465783A203435303B0A202020207669736962696C6974793A2076697369626C653B0A2020202077696474683A20313030253B0A202020206865696768743A20313030253B0A202020206261';
wwv_flow_api.g_varchar2_table(4) := '636B67726F756E643A2072676261283235352C203235352C203235352C20302E35293B0A7D0A2F2A2320736F757263654D617070696E6755524C3D7374796C652E6373732E6D6170202A2F0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(81165948891121190)
,p_plugin_id=>wwv_flow_api.id(81041461157632344)
,p_file_name=>'css/style.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2120406C6963656E736520444F4D507572696679207C202863292043757265353320616E64206F7468657220636F6E7472696275746F7273207C2052656C656173656420756E6465722074686520417061636865206C6963656E736520322E302061';
wwv_flow_api.g_varchar2_table(2) := '6E64204D6F7A696C6C61205075626C6963204C6963656E736520322E30207C206769746875622E636F6D2F6375726535332F444F4D5075726966792F626C6F622F322E322E322F4C4943454E5345202A2F0A2166756E6374696F6E28652C74297B226F62';
wwv_flow_api.g_varchar2_table(3) := '6A656374223D3D747970656F66206578706F727473262622756E646566696E656422213D747970656F66206D6F64756C653F6D6F64756C652E6578706F7274733D7428293A2266756E6374696F6E223D3D747970656F6620646566696E65262664656669';
wwv_flow_api.g_varchar2_table(4) := '6E652E616D643F646566696E652874293A28653D657C7C73656C66292E444F4D5075726966793D7428297D28746869732C2866756E6374696F6E28297B2275736520737472696374223B76617220653D4F626A6563742E6861734F776E50726F70657274';
wwv_flow_api.g_varchar2_table(5) := '792C743D4F626A6563742E73657450726F746F747970654F662C6E3D4F626A6563742E697346726F7A656E2C723D4F626A6563742E67657450726F746F747970654F662C6F3D4F626A6563742E6765744F776E50726F706572747944657363726970746F';
wwv_flow_api.g_varchar2_table(6) := '722C693D4F626A6563742E667265657A652C613D4F626A6563742E7365616C2C6C3D4F626A6563742E6372656174652C633D22756E646566696E656422213D747970656F66205265666C65637426265265666C6563742C733D632E6170706C792C753D63';
wwv_flow_api.g_varchar2_table(7) := '2E636F6E7374727563743B737C7C28733D66756E6374696F6E28652C742C6E297B72657475726E20652E6170706C7928742C6E297D292C697C7C28693D66756E6374696F6E2865297B72657475726E20657D292C617C7C28613D66756E6374696F6E2865';
wwv_flow_api.g_varchar2_table(8) := '297B72657475726E20657D292C757C7C28753D66756E6374696F6E28652C74297B72657475726E206E65772846756E6374696F6E2E70726F746F747970652E62696E642E6170706C7928652C5B6E756C6C5D2E636F6E6361742866756E6374696F6E2865';
wwv_flow_api.g_varchar2_table(9) := '297B69662841727261792E69734172726179286529297B666F722876617220743D302C6E3D417272617928652E6C656E677468293B743C652E6C656E6774683B742B2B296E5B745D3D655B745D3B72657475726E206E7D72657475726E2041727261792E';
wwv_flow_api.g_varchar2_table(10) := '66726F6D2865297D2874292929297D293B76617220662C6D3D782841727261792E70726F746F747970652E666F7245616368292C643D782841727261792E70726F746F747970652E706F70292C703D782841727261792E70726F746F747970652E707573';
wwv_flow_api.g_varchar2_table(11) := '68292C673D7828537472696E672E70726F746F747970652E746F4C6F77657243617365292C683D7828537472696E672E70726F746F747970652E6D61746368292C793D7828537472696E672E70726F746F747970652E7265706C616365292C763D782853';
wwv_flow_api.g_varchar2_table(12) := '7472696E672E70726F746F747970652E696E6465784F66292C623D7828537472696E672E70726F746F747970652E7472696D292C543D78285265674578702E70726F746F747970652E74657374292C413D28663D547970654572726F722C66756E637469';
wwv_flow_api.g_varchar2_table(13) := '6F6E28297B666F722876617220653D617267756D656E74732E6C656E6774682C743D41727261792865292C6E3D303B6E3C653B6E2B2B29745B6E5D3D617267756D656E74735B6E5D3B72657475726E207528662C74297D293B66756E6374696F6E207828';
wwv_flow_api.g_varchar2_table(14) := '65297B72657475726E2066756E6374696F6E2874297B666F7228766172206E3D617267756D656E74732E6C656E6774682C723D4172726179286E3E313F6E2D313A30292C6F3D313B6F3C6E3B6F2B2B29725B6F2D315D3D617267756D656E74735B6F5D3B';
wwv_flow_api.g_varchar2_table(15) := '72657475726E207328652C742C72297D7D66756E6374696F6E207728652C72297B7426267428652C6E756C6C293B666F7228766172206F3D722E6C656E6774683B6F2D2D3B297B76617220693D725B6F5D3B69662822737472696E67223D3D747970656F';
wwv_flow_api.g_varchar2_table(16) := '662069297B76617220613D672869293B61213D3D692626286E2872297C7C28725B6F5D3D61292C693D61297D655B695D3D21307D72657475726E20657D66756E6374696F6E20532874297B766172206E3D6C286E756C6C292C723D766F696420303B666F';
wwv_flow_api.g_varchar2_table(17) := '72287220696E2074297328652C742C5B725D292626286E5B725D3D745B725D293B72657475726E206E7D66756E6374696F6E206B28652C74297B666F72283B6E756C6C213D3D653B297B766172206E3D6F28652C74293B6966286E297B6966286E2E6765';
wwv_flow_api.g_varchar2_table(18) := '742972657475726E2078286E2E676574293B6966282266756E6374696F6E223D3D747970656F66206E2E76616C75652972657475726E2078286E2E76616C7565297D653D722865297D72657475726E206E756C6C7D76617220523D69285B2261222C2261';
wwv_flow_api.g_varchar2_table(19) := '626272222C226163726F6E796D222C2261646472657373222C2261726561222C2261727469636C65222C226173696465222C22617564696F222C2262222C22626469222C2262646F222C22626967222C22626C696E6B222C22626C6F636B71756F746522';
wwv_flow_api.g_varchar2_table(20) := '2C22626F6479222C226272222C22627574746F6E222C2263616E766173222C2263617074696F6E222C2263656E746572222C2263697465222C22636F6465222C22636F6C222C22636F6C67726F7570222C22636F6E74656E74222C2264617461222C2264';
wwv_flow_api.g_varchar2_table(21) := '6174616C697374222C226464222C226465636F7261746F72222C2264656C222C2264657461696C73222C2264666E222C226469616C6F67222C22646972222C22646976222C22646C222C226474222C22656C656D656E74222C22656D222C226669656C64';
wwv_flow_api.g_varchar2_table(22) := '736574222C2266696763617074696F6E222C22666967757265222C22666F6E74222C22666F6F746572222C22666F726D222C226831222C226832222C226833222C226834222C226835222C226836222C2268656164222C22686561646572222C22686772';
wwv_flow_api.g_varchar2_table(23) := '6F7570222C226872222C2268746D6C222C2269222C22696D67222C22696E707574222C22696E73222C226B6264222C226C6162656C222C226C6567656E64222C226C69222C226D61696E222C226D6170222C226D61726B222C226D617271756565222C22';
wwv_flow_api.g_varchar2_table(24) := '6D656E75222C226D656E756974656D222C226D65746572222C226E6176222C226E6F6272222C226F6C222C226F707467726F7570222C226F7074696F6E222C226F7574707574222C2270222C2270696374757265222C22707265222C2270726F67726573';
wwv_flow_api.g_varchar2_table(25) := '73222C2271222C227270222C227274222C2272756279222C2273222C2273616D70222C2273656374696F6E222C2273656C656374222C22736861646F77222C22736D616C6C222C22736F75726365222C22737061636572222C227370616E222C22737472';
wwv_flow_api.g_varchar2_table(26) := '696B65222C227374726F6E67222C227374796C65222C22737562222C2273756D6D617279222C22737570222C227461626C65222C2274626F6479222C227464222C2274656D706C617465222C227465787461726561222C2274666F6F74222C227468222C';
wwv_flow_api.g_varchar2_table(27) := '227468656164222C2274696D65222C227472222C22747261636B222C227474222C2275222C22756C222C22766172222C22766964656F222C22776272225D292C5F3D69285B22737667222C2261222C22616C74676C797068222C22616C74676C79706864';
wwv_flow_api.g_varchar2_table(28) := '6566222C22616C74676C7970686974656D222C22616E696D617465636F6C6F72222C22616E696D6174656D6F74696F6E222C22616E696D6174657472616E73666F726D222C22636972636C65222C22636C697070617468222C2264656673222C22646573';
wwv_flow_api.g_varchar2_table(29) := '63222C22656C6C69707365222C2266696C746572222C22666F6E74222C2267222C22676C797068222C22676C797068726566222C22686B65726E222C22696D616765222C226C696E65222C226C696E6561726772616469656E74222C226D61726B657222';
wwv_flow_api.g_varchar2_table(30) := '2C226D61736B222C226D65746164617461222C226D70617468222C2270617468222C227061747465726E222C22706F6C79676F6E222C22706F6C796C696E65222C2272616469616C6772616469656E74222C2272656374222C2273746F70222C22737479';
wwv_flow_api.g_varchar2_table(31) := '6C65222C22737769746368222C2273796D626F6C222C2274657874222C227465787470617468222C227469746C65222C2274726566222C22747370616E222C2276696577222C22766B65726E225D292C443D69285B226665426C656E64222C226665436F';
wwv_flow_api.g_varchar2_table(32) := '6C6F724D6174726978222C226665436F6D706F6E656E745472616E73666572222C226665436F6D706F73697465222C226665436F6E766F6C76654D6174726978222C226665446966667573654C69676874696E67222C226665446973706C6163656D656E';
wwv_flow_api.g_varchar2_table(33) := '744D6170222C22666544697374616E744C69676874222C226665466C6F6F64222C22666546756E6341222C22666546756E6342222C22666546756E6347222C22666546756E6352222C226665476175737369616E426C7572222C2266654D65726765222C';
wwv_flow_api.g_varchar2_table(34) := '2266654D657267654E6F6465222C2266654D6F7270686F6C6F6779222C2266654F6666736574222C226665506F696E744C69676874222C22666553706563756C61724C69676874696E67222C22666553706F744C69676874222C22666554696C65222C22';
wwv_flow_api.g_varchar2_table(35) := '666554757262756C656E6365225D292C453D69285B22616E696D617465222C22636F6C6F722D70726F66696C65222C22637572736F72222C2264697363617264222C22666564726F70736861646F77222C226665696D616765222C22666F6E742D666163';
wwv_flow_api.g_varchar2_table(36) := '65222C22666F6E742D666163652D666F726D6174222C22666F6E742D666163652D6E616D65222C22666F6E742D666163652D737263222C22666F6E742D666163652D757269222C22666F726569676E6F626A656374222C226861746368222C2268617463';
wwv_flow_api.g_varchar2_table(37) := '6870617468222C226D657368222C226D6573686772616469656E74222C226D6573687061746368222C226D657368726F77222C226D697373696E672D676C797068222C22736372697074222C22736574222C22736F6C6964636F6C6F72222C22756E6B6E';
wwv_flow_api.g_varchar2_table(38) := '6F776E222C22757365225D292C4E3D69285B226D617468222C226D656E636C6F7365222C226D6572726F72222C226D66656E636564222C226D66726163222C226D676C797068222C226D69222C226D6C6162656C65647472222C226D6D756C7469736372';
wwv_flow_api.g_varchar2_table(39) := '69707473222C226D6E222C226D6F222C226D6F766572222C226D706164646564222C226D7068616E746F6D222C226D726F6F74222C226D726F77222C226D73222C226D7370616365222C226D73717274222C226D7374796C65222C226D737562222C226D';
wwv_flow_api.g_varchar2_table(40) := '737570222C226D737562737570222C226D7461626C65222C226D7464222C226D74657874222C226D7472222C226D756E646572222C226D756E6465726F766572225D292C4F3D69285B226D616374696F6E222C226D616C69676E67726F7570222C226D61';
wwv_flow_api.g_varchar2_table(41) := '6C69676E6D61726B222C226D6C6F6E67646976222C226D7363617272696573222C226D736361727279222C226D7367726F7570222C226D737461636B222C226D736C696E65222C226D73726F77222C2273656D616E74696373222C22616E6E6F74617469';
wwv_flow_api.g_varchar2_table(42) := '6F6E222C22616E6E6F746174696F6E2D786D6C222C226D70726573637269707473222C226E6F6E65225D292C4C3D69285B222374657874225D292C4D3D69285B22616363657074222C22616374696F6E222C22616C69676E222C22616C74222C22617574';
wwv_flow_api.g_varchar2_table(43) := '6F6361706974616C697A65222C226175746F636F6D706C657465222C226175746F70696374757265696E70696374757265222C226175746F706C6179222C226261636B67726F756E64222C226267636F6C6F72222C22626F72646572222C226361707475';
wwv_flow_api.g_varchar2_table(44) := '7265222C2263656C6C70616464696E67222C2263656C6C73706163696E67222C22636865636B6564222C2263697465222C22636C617373222C22636C656172222C22636F6C6F72222C22636F6C73222C22636F6C7370616E222C22636F6E74726F6C7322';
wwv_flow_api.g_varchar2_table(45) := '2C22636F6E74726F6C736C697374222C22636F6F726473222C2263726F73736F726967696E222C226461746574696D65222C226465636F64696E67222C2264656661756C74222C22646972222C2264697361626C6564222C2264697361626C6570696374';
wwv_flow_api.g_varchar2_table(46) := '757265696E70696374757265222C2264697361626C6572656D6F7465706C61796261636B222C22646F776E6C6F6164222C22647261676761626C65222C22656E6374797065222C22656E7465726B657968696E74222C2266616365222C22666F72222C22';
wwv_flow_api.g_varchar2_table(47) := '68656164657273222C22686569676874222C2268696464656E222C2268696768222C2268726566222C22687265666C616E67222C226964222C22696E7075746D6F6465222C22696E74656772697479222C2269736D6170222C226B696E64222C226C6162';
wwv_flow_api.g_varchar2_table(48) := '656C222C226C616E67222C226C697374222C226C6F6164696E67222C226C6F6F70222C226C6F77222C226D6178222C226D61786C656E677468222C226D65646961222C226D6574686F64222C226D696E222C226D696E6C656E677468222C226D756C7469';
wwv_flow_api.g_varchar2_table(49) := '706C65222C226D75746564222C226E616D65222C226E6F7368616465222C226E6F76616C6964617465222C226E6F77726170222C226F70656E222C226F7074696D756D222C227061747465726E222C22706C616365686F6C646572222C22706C61797369';
wwv_flow_api.g_varchar2_table(50) := '6E6C696E65222C22706F73746572222C227072656C6F6164222C2270756264617465222C22726164696F67726F7570222C22726561646F6E6C79222C2272656C222C227265717569726564222C22726576222C227265766572736564222C22726F6C6522';
wwv_flow_api.g_varchar2_table(51) := '2C22726F7773222C22726F777370616E222C227370656C6C636865636B222C2273636F7065222C2273656C6563746564222C227368617065222C2273697A65222C2273697A6573222C227370616E222C227372636C616E67222C227374617274222C2273';
wwv_flow_api.g_varchar2_table(52) := '7263222C22737263736574222C2273746570222C227374796C65222C2273756D6D617279222C22746162696E646578222C227469746C65222C227472616E736C617465222C2274797065222C227573656D6170222C2276616C69676E222C2276616C7565';
wwv_flow_api.g_varchar2_table(53) := '222C227769647468222C22786D6C6E73225D292C463D69285B22616363656E742D686569676874222C22616363756D756C617465222C226164646974697665222C22616C69676E6D656E742D626173656C696E65222C22617363656E74222C2261747472';
wwv_flow_api.g_varchar2_table(54) := '69627574656E616D65222C2261747472696275746574797065222C22617A696D757468222C22626173656672657175656E6379222C22626173656C696E652D7368696674222C22626567696E222C2262696173222C226279222C22636C617373222C2263';
wwv_flow_api.g_varchar2_table(55) := '6C6970222C22636C697070617468756E697473222C22636C69702D70617468222C22636C69702D72756C65222C22636F6C6F72222C22636F6C6F722D696E746572706F6C6174696F6E222C22636F6C6F722D696E746572706F6C6174696F6E2D66696C74';
wwv_flow_api.g_varchar2_table(56) := '657273222C22636F6C6F722D70726F66696C65222C22636F6C6F722D72656E646572696E67222C226378222C226379222C2264222C226478222C226479222C2264696666757365636F6E7374616E74222C22646972656374696F6E222C22646973706C61';
wwv_flow_api.g_varchar2_table(57) := '79222C2264697669736F72222C22647572222C22656467656D6F6465222C22656C65766174696F6E222C22656E64222C2266696C6C222C2266696C6C2D6F706163697479222C2266696C6C2D72756C65222C2266696C746572222C2266696C746572756E';
wwv_flow_api.g_varchar2_table(58) := '697473222C22666C6F6F642D636F6C6F72222C22666C6F6F642D6F706163697479222C22666F6E742D66616D696C79222C22666F6E742D73697A65222C22666F6E742D73697A652D61646A757374222C22666F6E742D73747265746368222C22666F6E74';
wwv_flow_api.g_varchar2_table(59) := '2D7374796C65222C22666F6E742D76617269616E74222C22666F6E742D776569676874222C226678222C226679222C226731222C226732222C22676C7970682D6E616D65222C22676C797068726566222C226772616469656E74756E697473222C226772';
wwv_flow_api.g_varchar2_table(60) := '616469656E747472616E73666F726D222C22686569676874222C2268726566222C226964222C22696D6167652D72656E646572696E67222C22696E222C22696E32222C226B222C226B31222C226B32222C226B33222C226B34222C226B65726E696E6722';
wwv_flow_api.g_varchar2_table(61) := '2C226B6579706F696E7473222C226B657973706C696E6573222C226B657974696D6573222C226C616E67222C226C656E67746861646A757374222C226C65747465722D73706163696E67222C226B65726E656C6D6174726978222C226B65726E656C756E';
wwv_flow_api.g_varchar2_table(62) := '69746C656E677468222C226C69676874696E672D636F6C6F72222C226C6F63616C222C226D61726B65722D656E64222C226D61726B65722D6D6964222C226D61726B65722D7374617274222C226D61726B6572686569676874222C226D61726B6572756E';
wwv_flow_api.g_varchar2_table(63) := '697473222C226D61726B65727769647468222C226D61736B636F6E74656E74756E697473222C226D61736B756E697473222C226D6178222C226D61736B222C226D65646961222C226D6574686F64222C226D6F6465222C226D696E222C226E616D65222C';
wwv_flow_api.g_varchar2_table(64) := '226E756D6F637461766573222C226F6666736574222C226F70657261746F72222C226F706163697479222C226F72646572222C226F7269656E74222C226F7269656E746174696F6E222C226F726967696E222C226F766572666C6F77222C227061696E74';
wwv_flow_api.g_varchar2_table(65) := '2D6F72646572222C2270617468222C22706174686C656E677468222C227061747465726E636F6E74656E74756E697473222C227061747465726E7472616E73666F726D222C227061747465726E756E697473222C22706F696E7473222C22707265736572';
wwv_flow_api.g_varchar2_table(66) := '7665616C706861222C227072657365727665617370656374726174696F222C227072696D6974697665756E697473222C2272222C227278222C227279222C22726164697573222C2272656678222C2272656679222C22726570656174636F756E74222C22';
wwv_flow_api.g_varchar2_table(67) := '726570656174647572222C2272657374617274222C22726573756C74222C22726F74617465222C227363616C65222C2273656564222C2273686170652D72656E646572696E67222C2273706563756C6172636F6E7374616E74222C2273706563756C6172';
wwv_flow_api.g_varchar2_table(68) := '6578706F6E656E74222C227370726561646D6574686F64222C2273746172746F6666736574222C22737464646576696174696F6E222C2273746974636874696C6573222C2273746F702D636F6C6F72222C2273746F702D6F706163697479222C22737472';
wwv_flow_api.g_varchar2_table(69) := '6F6B652D646173686172726179222C227374726F6B652D646173686F6666736574222C227374726F6B652D6C696E65636170222C227374726F6B652D6C696E656A6F696E222C227374726F6B652D6D697465726C696D6974222C227374726F6B652D6F70';
wwv_flow_api.g_varchar2_table(70) := '6163697479222C227374726F6B65222C227374726F6B652D7769647468222C227374796C65222C22737572666163657363616C65222C2273797374656D6C616E6775616765222C22746162696E646578222C2274617267657478222C2274617267657479';
wwv_flow_api.g_varchar2_table(71) := '222C227472616E73666F726D222C22746578742D616E63686F72222C22746578742D6465636F726174696F6E222C22746578742D72656E646572696E67222C22746578746C656E677468222C2274797065222C227531222C227532222C22756E69636F64';
wwv_flow_api.g_varchar2_table(72) := '65222C2276616C756573222C2276696577626F78222C227669736962696C697479222C2276657273696F6E222C22766572742D6164762D79222C22766572742D6F726967696E2D78222C22766572742D6F726967696E2D79222C227769647468222C2277';
wwv_flow_api.g_varchar2_table(73) := '6F72642D73706163696E67222C2277726170222C2277726974696E672D6D6F6465222C22786368616E6E656C73656C6563746F72222C22796368616E6E656C73656C6563746F72222C2278222C227831222C227832222C22786D6C6E73222C2279222C22';
wwv_flow_api.g_varchar2_table(74) := '7931222C227932222C227A222C227A6F6F6D616E6470616E225D292C433D69285B22616363656E74222C22616363656E74756E646572222C22616C69676E222C22626576656C6C6564222C22636C6F7365222C22636F6C756D6E73616C69676E222C2263';
wwv_flow_api.g_varchar2_table(75) := '6F6C756D6E6C696E6573222C22636F6C756D6E7370616E222C2264656E6F6D616C69676E222C226465707468222C22646972222C22646973706C6179222C22646973706C61797374796C65222C22656E636F64696E67222C2266656E6365222C22667261';
wwv_flow_api.g_varchar2_table(76) := '6D65222C22686569676874222C2268726566222C226964222C226C617267656F70222C226C656E677468222C226C696E65746869636B6E657373222C226C7370616365222C226C71756F7465222C226D6174686261636B67726F756E64222C226D617468';
wwv_flow_api.g_varchar2_table(77) := '636F6C6F72222C226D61746873697A65222C226D61746876617269616E74222C226D617873697A65222C226D696E73697A65222C226D6F7661626C656C696D697473222C226E6F746174696F6E222C226E756D616C69676E222C226F70656E222C22726F';
wwv_flow_api.g_varchar2_table(78) := '77616C69676E222C22726F776C696E6573222C22726F7773706163696E67222C22726F777370616E222C22727370616365222C227271756F7465222C227363726970746C6576656C222C227363726970746D696E73697A65222C2273637269707473697A';
wwv_flow_api.g_varchar2_table(79) := '656D756C7469706C696572222C2273656C656374696F6E222C22736570617261746F72222C22736570617261746F7273222C227374726574636879222C227375627363726970747368696674222C227375707363726970747368696674222C2273796D6D';
wwv_flow_api.g_varchar2_table(80) := '6574726963222C22766F6666736574222C227769647468222C22786D6C6E73225D292C493D69285B22786C696E6B3A68726566222C22786D6C3A6964222C22786C696E6B3A7469746C65222C22786D6C3A7370616365222C22786D6C6E733A786C696E6B';
wwv_flow_api.g_varchar2_table(81) := '225D292C7A3D61282F5C7B5C7B5B5C735C535D2A7C5B5C735C535D2A5C7D5C7D2F676D292C483D61282F3C255B5C735C535D2A7C5B5C735C535D2A253E2F676D292C553D61282F5E646174612D5B5C2D5C772E5C75303042372D5C75464646465D2F292C';
wwv_flow_api.g_varchar2_table(82) := '6A3D61282F5E617269612D5B5C2D5C775D2B242F292C503D61282F5E283F3A283F3A283F3A667C6874297470733F7C6D61696C746F7C74656C7C63616C6C746F7C6369647C786D7070293A7C5B5E612D7A5D7C5B612D7A2B2E5C2D5D2B283F3A5B5E612D';
wwv_flow_api.g_varchar2_table(83) := '7A2B2E5C2D3A5D7C2429292F69292C423D61282F5E283F3A5C772B7363726970747C64617461293A2F69292C573D61282F5B5C75303030302D5C75303032305C75303041305C75313638305C75313830455C75323030302D5C75323032395C7532303546';
wwv_flow_api.g_varchar2_table(84) := '5C75333030305D2F67292C473D2266756E6374696F6E223D3D747970656F662053796D626F6C26262273796D626F6C223D3D747970656F662053796D626F6C2E6974657261746F723F66756E6374696F6E2865297B72657475726E20747970656F662065';
wwv_flow_api.g_varchar2_table(85) := '7D3A66756E6374696F6E2865297B72657475726E206526262266756E6374696F6E223D3D747970656F662053796D626F6C2626652E636F6E7374727563746F723D3D3D53796D626F6C262665213D3D53796D626F6C2E70726F746F747970653F2273796D';
wwv_flow_api.g_varchar2_table(86) := '626F6C223A747970656F6620657D3B66756E6374696F6E20712865297B69662841727261792E69734172726179286529297B666F722876617220743D302C6E3D417272617928652E6C656E677468293B743C652E6C656E6774683B742B2B296E5B745D3D';
wwv_flow_api.g_varchar2_table(87) := '655B745D3B72657475726E206E7D72657475726E2041727261792E66726F6D2865297D766172204B3D66756E6374696F6E28297B72657475726E22756E646566696E6564223D3D747970656F662077696E646F773F6E756C6C3A77696E646F777D2C563D';
wwv_flow_api.g_varchar2_table(88) := '66756E6374696F6E28652C74297B696628226F626A65637422213D3D28766F696420303D3D3D653F22756E646566696E6564223A47286529297C7C2266756E6374696F6E22213D747970656F6620652E637265617465506F6C6963792972657475726E20';
wwv_flow_api.g_varchar2_table(89) := '6E756C6C3B766172206E3D6E756C6C2C723D22646174612D74742D706F6C6963792D737566666978223B742E63757272656E745363726970742626742E63757272656E745363726970742E6861734174747269627574652872292626286E3D742E637572';
wwv_flow_api.g_varchar2_table(90) := '72656E745363726970742E676574417474726962757465287229293B766172206F3D22646F6D707572696679222B286E3F2223222B6E3A2222293B7472797B72657475726E20652E637265617465506F6C696379286F2C7B63726561746548544D4C3A66';
wwv_flow_api.g_varchar2_table(91) := '756E6374696F6E2865297B72657475726E20657D7D297D63617463682865297B72657475726E20636F6E736F6C652E7761726E282254727573746564547970657320706F6C69637920222B6F2B2220636F756C64206E6F7420626520637265617465642E';
wwv_flow_api.g_varchar2_table(92) := '22292C6E756C6C7D7D3B72657475726E2066756E6374696F6E206528297B76617220743D617267756D656E74732E6C656E6774683E302626766F69642030213D3D617267756D656E74735B305D3F617267756D656E74735B305D3A4B28292C6E3D66756E';
wwv_flow_api.g_varchar2_table(93) := '6374696F6E2874297B72657475726E20652874297D3B6966286E2E76657273696F6E3D22322E322E36222C6E2E72656D6F7665643D5B5D2C21747C7C21742E646F63756D656E747C7C39213D3D742E646F63756D656E742E6E6F64655479706529726574';
wwv_flow_api.g_varchar2_table(94) := '75726E206E2E6973537570706F727465643D21312C6E3B76617220723D742E646F63756D656E742C6F3D742E646F63756D656E742C613D742E446F63756D656E74467261676D656E742C6C3D742E48544D4C54656D706C617465456C656D656E742C633D';
wwv_flow_api.g_varchar2_table(95) := '742E4E6F64652C733D742E456C656D656E742C753D742E4E6F646546696C7465722C663D742E4E616D65644E6F64654D61702C783D766F696420303D3D3D663F742E4E616D65644E6F64654D61707C7C742E4D6F7A4E616D6564417474724D61703A662C';
wwv_flow_api.g_varchar2_table(96) := '593D742E546578742C583D742E436F6D6D656E742C243D742E444F4D5061727365722C5A3D742E7472757374656454797065732C4A3D732E70726F746F747970652C513D6B284A2C22636C6F6E654E6F646522292C65653D6B284A2C226E657874536962';
wwv_flow_api.g_varchar2_table(97) := '6C696E6722292C74653D6B284A2C226368696C644E6F64657322292C6E653D6B284A2C22706172656E744E6F646522293B6966282266756E6374696F6E223D3D747970656F66206C297B7661722072653D6F2E637265617465456C656D656E7428227465';
wwv_flow_api.g_varchar2_table(98) := '6D706C61746522293B72652E636F6E74656E74262672652E636F6E74656E742E6F776E6572446F63756D656E742626286F3D72652E636F6E74656E742E6F776E6572446F63756D656E74297D766172206F653D56285A2C72292C69653D6F6526267A653F';
wwv_flow_api.g_varchar2_table(99) := '6F652E63726561746548544D4C282222293A22222C61653D6F2C6C653D61652E696D706C656D656E746174696F6E2C63653D61652E6372656174654E6F64654974657261746F722C73653D61652E676574456C656D656E747342795461674E616D652C75';
wwv_flow_api.g_varchar2_table(100) := '653D61652E637265617465446F63756D656E74467261676D656E742C66653D722E696D706F72744E6F64652C6D653D7B7D3B7472797B6D653D53286F292E646F63756D656E744D6F64653F6F2E646F63756D656E744D6F64653A7B7D7D63617463682865';
wwv_flow_api.g_varchar2_table(101) := '297B7D7661722064653D7B7D3B6E2E6973537570706F727465643D6C652626766F69642030213D3D6C652E63726561746548544D4C446F63756D656E74262639213D3D6D653B7661722070653D7A2C67653D482C68653D552C79653D6A2C76653D422C62';
wwv_flow_api.g_varchar2_table(102) := '653D572C54653D502C41653D6E756C6C2C78653D77287B7D2C5B5D2E636F6E63617428712852292C71285F292C712844292C71284E292C71284C2929292C77653D6E756C6C2C53653D77287B7D2C5B5D2E636F6E6361742871284D292C712846292C7128';
wwv_flow_api.g_varchar2_table(103) := '43292C7128492929292C6B653D6E756C6C2C52653D6E756C6C2C5F653D21302C44653D21302C45653D21312C4E653D21312C4F653D21312C4C653D21312C4D653D21312C46653D21312C43653D21312C49653D21302C7A653D21312C48653D21302C5565';
wwv_flow_api.g_varchar2_table(104) := '3D21302C6A653D21312C50653D7B7D2C42653D77287B7D2C5B22616E6E6F746174696F6E2D786D6C222C22617564696F222C22636F6C67726F7570222C2264657363222C22666F726569676E6F626A656374222C2268656164222C22696672616D65222C';
wwv_flow_api.g_varchar2_table(105) := '226D617468222C226D69222C226D6E222C226D6F222C226D73222C226D74657874222C226E6F656D626564222C226E6F6672616D6573222C226E6F736372697074222C22706C61696E74657874222C22736372697074222C227374796C65222C22737667';
wwv_flow_api.g_varchar2_table(106) := '222C2274656D706C617465222C227468656164222C227469746C65222C22766964656F222C22786D70225D292C57653D6E756C6C2C47653D77287B7D2C5B22617564696F222C22766964656F222C22696D67222C22736F75726365222C22696D61676522';
wwv_flow_api.g_varchar2_table(107) := '2C22747261636B225D292C71653D6E756C6C2C4B653D77287B7D2C5B22616C74222C22636C617373222C22666F72222C226964222C226C6162656C222C226E616D65222C227061747465726E222C22706C616365686F6C646572222C2273756D6D617279';
wwv_flow_api.g_varchar2_table(108) := '222C227469746C65222C2276616C7565222C227374796C65222C22786D6C6E73225D292C56653D6E756C6C2C59653D6F2E637265617465456C656D656E742822666F726D22292C58653D66756E6374696F6E2865297B5665262656653D3D3D657C7C2865';
wwv_flow_api.g_varchar2_table(109) := '2626226F626A656374223D3D3D28766F696420303D3D3D653F22756E646566696E6564223A47286529297C7C28653D7B7D292C653D532865292C41653D22414C4C4F5745445F5441475322696E20653F77287B7D2C652E414C4C4F5745445F5441475329';
wwv_flow_api.g_varchar2_table(110) := '3A78652C77653D22414C4C4F5745445F4154545222696E20653F77287B7D2C652E414C4C4F5745445F41545452293A53652C71653D224144445F5552495F534146455F4154545222696E20653F772853284B65292C652E4144445F5552495F534146455F';
wwv_flow_api.g_varchar2_table(111) := '41545452293A4B652C57653D224144445F444154415F5552495F5441475322696E20653F772853284765292C652E4144445F444154415F5552495F54414753293A47652C6B653D22464F524249445F5441475322696E20653F77287B7D2C652E464F5242';
wwv_flow_api.g_varchar2_table(112) := '49445F54414753293A7B7D2C52653D22464F524249445F4154545222696E20653F77287B7D2C652E464F524249445F41545452293A7B7D2C50653D225553455F50524F46494C455322696E20652626652E5553455F50524F46494C45532C5F653D213121';
wwv_flow_api.g_varchar2_table(113) := '3D3D652E414C4C4F575F415249415F415454522C44653D2131213D3D652E414C4C4F575F444154415F415454522C45653D652E414C4C4F575F554E4B4E4F574E5F50524F544F434F4C537C7C21312C4E653D652E534146455F464F525F54454D504C4154';
wwv_flow_api.g_varchar2_table(114) := '45537C7C21312C4F653D652E57484F4C455F444F43554D454E547C7C21312C46653D652E52455455524E5F444F4D7C7C21312C43653D652E52455455524E5F444F4D5F465241474D454E547C7C21312C49653D2131213D3D652E52455455524E5F444F4D';
wwv_flow_api.g_varchar2_table(115) := '5F494D504F52542C7A653D652E52455455524E5F545255535445445F545950457C7C21312C4D653D652E464F5243455F424F44597C7C21312C48653D2131213D3D652E53414E4954495A455F444F4D2C55653D2131213D3D652E4B4545505F434F4E5445';
wwv_flow_api.g_varchar2_table(116) := '4E542C6A653D652E494E5F504C4143457C7C21312C54653D652E414C4C4F5745445F5552495F5245474558507C7C54652C4E6526262844653D2131292C436526262846653D2130292C506526262841653D77287B7D2C5B5D2E636F6E6361742871284C29';
wwv_flow_api.g_varchar2_table(117) := '29292C77653D5B5D2C21303D3D3D50652E68746D6C262628772841652C52292C772877652C4D29292C21303D3D3D50652E737667262628772841652C5F292C772877652C46292C772877652C4929292C21303D3D3D50652E73766746696C746572732626';
wwv_flow_api.g_varchar2_table(118) := '28772841652C44292C772877652C46292C772877652C4929292C21303D3D3D50652E6D6174684D6C262628772841652C4E292C772877652C43292C772877652C492929292C652E4144445F5441475326262841653D3D3D786526262841653D5328416529';
wwv_flow_api.g_varchar2_table(119) := '292C772841652C652E4144445F5441475329292C652E4144445F4154545226262877653D3D3D536526262877653D5328776529292C772877652C652E4144445F4154545229292C652E4144445F5552495F534146455F415454522626772871652C652E41';
wwv_flow_api.g_varchar2_table(120) := '44445F5552495F534146455F41545452292C556526262841655B222374657874225D3D2130292C4F652626772841652C5B2268746D6C222C2268656164222C22626F6479225D292C41652E7461626C65262628772841652C5B2274626F6479225D292C64';
wwv_flow_api.g_varchar2_table(121) := '656C657465206B652E74626F6479292C692626692865292C56653D65297D2C24653D77287B7D2C5B226D69222C226D6F222C226D6E222C226D73222C226D74657874225D292C5A653D77287B7D2C5B22666F726569676E6F626A656374222C2264657363';
wwv_flow_api.g_varchar2_table(122) := '222C227469746C65222C22616E6E6F746174696F6E2D786D6C225D292C4A653D77287B7D2C5F293B77284A652C44292C77284A652C45293B7661722051653D77287B7D2C4E293B772851652C4F293B7661722065743D22687474703A2F2F7777772E7733';
wwv_flow_api.g_varchar2_table(123) := '2E6F72672F313939382F4D6174682F4D6174684D4C222C74743D22687474703A2F2F7777772E77332E6F72672F323030302F737667222C6E743D22687474703A2F2F7777772E77332E6F72672F313939392F7868746D6C222C72743D66756E6374696F6E';
wwv_flow_api.g_varchar2_table(124) := '2865297B76617220743D6E652865293B742626742E7461674E616D657C7C28743D7B6E616D6573706163655552493A6E742C7461674E616D653A2274656D706C617465227D293B766172206E3D6728652E7461674E616D65292C723D6728742E7461674E';
wwv_flow_api.g_varchar2_table(125) := '616D65293B696628652E6E616D6573706163655552493D3D3D74742972657475726E20742E6E616D6573706163655552493D3D3D6E743F22737667223D3D3D6E3A742E6E616D6573706163655552493D3D3D65743F22737667223D3D3D6E26262822616E';
wwv_flow_api.g_varchar2_table(126) := '6E6F746174696F6E2D786D6C223D3D3D727C7C24655B725D293A426F6F6C65616E284A655B6E5D293B696628652E6E616D6573706163655552493D3D3D65742972657475726E20742E6E616D6573706163655552493D3D3D6E743F226D617468223D3D3D';
wwv_flow_api.g_varchar2_table(127) := '6E3A742E6E616D6573706163655552493D3D3D74743F226D617468223D3D3D6E26265A655B725D3A426F6F6C65616E2851655B6E5D293B696628652E6E616D6573706163655552493D3D3D6E74297B696628742E6E616D6573706163655552493D3D3D74';
wwv_flow_api.g_varchar2_table(128) := '742626215A655B725D2972657475726E21313B696628742E6E616D6573706163655552493D3D3D657426262124655B725D2972657475726E21313B766172206F3D77287B7D2C5B227469746C65222C227374796C65222C22666F6E74222C2261222C2273';
wwv_flow_api.g_varchar2_table(129) := '6372697074225D293B72657475726E2151655B6E5D2626286F5B6E5D7C7C214A655B6E5D297D72657475726E21317D2C6F743D66756E6374696F6E2865297B70286E2E72656D6F7665642C7B656C656D656E743A657D293B7472797B652E706172656E74';
wwv_flow_api.g_varchar2_table(130) := '4E6F64652E72656D6F76654368696C642865297D63617463682874297B7472797B652E6F7574657248544D4C3D69657D63617463682874297B652E72656D6F766528297D7D7D2C69743D66756E6374696F6E28652C74297B7472797B70286E2E72656D6F';
wwv_flow_api.g_varchar2_table(131) := '7665642C7B6174747269627574653A742E6765744174747269627574654E6F64652865292C66726F6D3A747D297D63617463682865297B70286E2E72656D6F7665642C7B6174747269627574653A6E756C6C2C66726F6D3A747D297D742E72656D6F7665';
wwv_flow_api.g_varchar2_table(132) := '4174747269627574652865297D2C61743D66756E6374696F6E2865297B76617220743D766F696420302C6E3D766F696420303B6966284D6529653D223C72656D6F76653E3C2F72656D6F76653E222B653B656C73657B76617220723D6828652C2F5E5B5C';
wwv_flow_api.g_varchar2_table(133) := '725C6E5C74205D2B2F293B6E3D722626725B305D7D76617220693D6F653F6F652E63726561746548544D4C2865293A653B7472797B743D286E65772024292E706172736546726F6D537472696E6728692C22746578742F68746D6C22297D636174636828';
wwv_flow_api.g_varchar2_table(134) := '65297B7D69662821747C7C21742E646F63756D656E74456C656D656E74297B76617220613D28743D6C652E63726561746548544D4C446F63756D656E7428222229292E626F64793B612E706172656E744E6F64652E72656D6F76654368696C6428612E70';
wwv_flow_api.g_varchar2_table(135) := '6172656E744E6F64652E6669727374456C656D656E744368696C64292C612E6F7574657248544D4C3D697D72657475726E206526266E2626742E626F64792E696E736572744265666F7265286F2E637265617465546578744E6F6465286E292C742E626F';
wwv_flow_api.g_varchar2_table(136) := '64792E6368696C644E6F6465735B305D7C7C6E756C6C292C73652E63616C6C28742C4F653F2268746D6C223A22626F647922295B305D7D2C6C743D66756E6374696F6E2865297B72657475726E2063652E63616C6C28652E6F776E6572446F63756D656E';
wwv_flow_api.g_varchar2_table(137) := '747C7C652C652C752E53484F575F454C454D454E547C752E53484F575F434F4D4D454E547C752E53484F575F544558542C2866756E6374696F6E28297B72657475726E20752E46494C5445525F4143434550547D292C2131297D2C63743D66756E637469';
wwv_flow_api.g_varchar2_table(138) := '6F6E2865297B72657475726E21286520696E7374616E63656F6620597C7C6520696E7374616E63656F662058292626212822737472696E67223D3D747970656F6620652E6E6F64654E616D65262622737472696E67223D3D747970656F6620652E746578';
wwv_flow_api.g_varchar2_table(139) := '74436F6E74656E7426262266756E6374696F6E223D3D747970656F6620652E72656D6F76654368696C642626652E6174747269627574657320696E7374616E63656F66207826262266756E6374696F6E223D3D747970656F6620652E72656D6F76654174';
wwv_flow_api.g_varchar2_table(140) := '7472696275746526262266756E6374696F6E223D3D747970656F6620652E736574417474726962757465262622737472696E67223D3D747970656F6620652E6E616D65737061636555524926262266756E6374696F6E223D3D747970656F6620652E696E';
wwv_flow_api.g_varchar2_table(141) := '736572744265666F7265297D2C73743D66756E6374696F6E2865297B72657475726E226F626A656374223D3D3D28766F696420303D3D3D633F22756E646566696E6564223A47286329293F6520696E7374616E63656F6620633A652626226F626A656374';
wwv_flow_api.g_varchar2_table(142) := '223D3D3D28766F696420303D3D3D653F22756E646566696E6564223A47286529292626226E756D626572223D3D747970656F6620652E6E6F646554797065262622737472696E67223D3D747970656F6620652E6E6F64654E616D657D2C75743D66756E63';
wwv_flow_api.g_varchar2_table(143) := '74696F6E28652C742C72297B64655B655D26266D2864655B655D2C2866756E6374696F6E2865297B652E63616C6C286E2C742C722C5665297D29297D2C66743D66756E6374696F6E2865297B76617220743D766F696420303B696628757428226265666F';
wwv_flow_api.g_varchar2_table(144) := '726553616E6974697A65456C656D656E7473222C652C6E756C6C292C63742865292972657475726E206F742865292C21303B6966286828652E6E6F64654E616D652C2F5B5C75303038302D5C75464646465D2F292972657475726E206F742865292C2130';
wwv_flow_api.g_varchar2_table(145) := '3B76617220723D6728652E6E6F64654E616D65293B6966287574282275706F6E53616E6974697A65456C656D656E74222C652C7B7461674E616D653A722C616C6C6F776564546167733A41657D292C21737428652E6669727374456C656D656E74436869';
wwv_flow_api.g_varchar2_table(146) := '6C642926262821737428652E636F6E74656E74297C7C21737428652E636F6E74656E742E6669727374456C656D656E744368696C642929262654282F3C5B2F5C775D2F672C652E696E6E657248544D4C29262654282F3C5B2F5C775D2F672C652E746578';
wwv_flow_api.g_varchar2_table(147) := '74436F6E74656E74292972657475726E206F742865292C21303B6966282141655B725D7C7C6B655B725D297B696628556526262142655B725D29666F7228766172206F3D6E652865292C693D74652865292C613D692E6C656E6774682D313B613E3D303B';
wwv_flow_api.g_varchar2_table(148) := '2D2D61296F2E696E736572744265666F7265285128695B615D2C2130292C6565286529293B72657475726E206F742865292C21307D72657475726E206520696E7374616E63656F66207326262172742865293F286F742865292C2130293A226E6F736372';
wwv_flow_api.g_varchar2_table(149) := '69707422213D3D722626226E6F656D62656422213D3D727C7C2154282F3C5C2F6E6F287363726970747C656D626564292F692C652E696E6E657248544D4C293F284E652626333D3D3D652E6E6F646554797065262628743D652E74657874436F6E74656E';
wwv_flow_api.g_varchar2_table(150) := '742C743D7928742C70652C222022292C743D7928742C67652C222022292C652E74657874436F6E74656E74213D3D7426262870286E2E72656D6F7665642C7B656C656D656E743A652E636C6F6E654E6F646528297D292C652E74657874436F6E74656E74';
wwv_flow_api.g_varchar2_table(151) := '3D7429292C75742822616674657253616E6974697A65456C656D656E7473222C652C6E756C6C292C2131293A286F742865292C2130297D2C6D743D66756E6374696F6E28652C742C6E297B6966284865262628226964223D3D3D747C7C226E616D65223D';
wwv_flow_api.g_varchar2_table(152) := '3D3D74292626286E20696E206F7C7C6E20696E205965292972657475726E21313B69662844652626542868652C7429293B656C7365206966285F652626542879652C7429293B656C73657B6966282177655B745D7C7C52655B745D2972657475726E2131';
wwv_flow_api.g_varchar2_table(153) := '3B69662871655B745D293B656C736520696628542854652C79286E2C62652C22222929293B656C7365206966282273726322213D3D74262622786C696E6B3A6872656622213D3D742626226872656622213D3D747C7C22736372697074223D3D3D657C7C';
wwv_flow_api.g_varchar2_table(154) := '30213D3D76286E2C22646174613A22297C7C2157655B655D297B6966284565262621542876652C79286E2C62652C22222929293B656C7365206966286E2972657475726E21317D656C73653B7D72657475726E21307D2C64743D66756E6374696F6E2865';
wwv_flow_api.g_varchar2_table(155) := '297B76617220743D766F696420302C723D766F696420302C6F3D766F696420302C693D766F696420303B757428226265666F726553616E6974697A6541747472696275746573222C652C6E756C6C293B76617220613D652E617474726962757465733B69';
wwv_flow_api.g_varchar2_table(156) := '662861297B766172206C3D7B617474724E616D653A22222C6174747256616C75653A22222C6B656570417474723A21302C616C6C6F776564417474726962757465733A77657D3B666F7228693D612E6C656E6774683B692D2D3B297B76617220633D743D';
wwv_flow_api.g_varchar2_table(157) := '615B695D2C733D632E6E616D652C753D632E6E616D6573706163655552493B696628723D6228742E76616C7565292C6F3D672873292C6C2E617474724E616D653D6F2C6C2E6174747256616C75653D722C6C2E6B656570417474723D21302C6C2E666F72';
wwv_flow_api.g_varchar2_table(158) := '63654B656570417474723D766F696420302C7574282275706F6E53616E6974697A65417474726962757465222C652C6C292C723D6C2E6174747256616C75652C216C2E666F7263654B65657041747472262628697428732C65292C6C2E6B656570417474';
wwv_flow_api.g_varchar2_table(159) := '72292969662854282F5C2F3E2F692C722929697428732C65293B656C73657B4E65262628723D7928722C70652C222022292C723D7928722C67652C22202229293B76617220663D652E6E6F64654E616D652E746F4C6F7765724361736528293B6966286D';
wwv_flow_api.g_varchar2_table(160) := '7428662C6F2C7229297472797B753F652E7365744174747269627574654E5328752C732C72293A652E73657441747472696275746528732C72292C64286E2E72656D6F766564297D63617463682865297B7D7D7D75742822616674657253616E6974697A';
wwv_flow_api.g_varchar2_table(161) := '6541747472696275746573222C652C6E756C6C297D7D2C70743D66756E6374696F6E20652874297B766172206E3D766F696420302C723D6C742874293B666F7228757428226265666F726553616E6974697A65536861646F77444F4D222C742C6E756C6C';
wwv_flow_api.g_varchar2_table(162) := '293B6E3D722E6E6578744E6F646528293B297574282275706F6E53616E6974697A65536861646F774E6F6465222C6E2C6E756C6C292C6674286E297C7C286E2E636F6E74656E7420696E7374616E63656F662061262665286E2E636F6E74656E74292C64';
wwv_flow_api.g_varchar2_table(163) := '74286E29293B75742822616674657253616E6974697A65536861646F77444F4D222C742C6E756C6C297D3B72657475726E206E2E73616E6974697A653D66756E6374696F6E28652C6F297B76617220693D766F696420302C6C3D766F696420302C733D76';
wwv_flow_api.g_varchar2_table(164) := '6F696420302C753D766F696420302C663D766F696420303B696628657C7C28653D225C783363212D2D5C78336522292C22737472696E6722213D747970656F6620652626217374286529297B6966282266756E6374696F6E22213D747970656F6620652E';
wwv_flow_api.g_varchar2_table(165) := '746F537472696E67297468726F7720412822746F537472696E67206973206E6F7420612066756E6374696F6E22293B69662822737472696E6722213D747970656F6628653D652E746F537472696E67282929297468726F77204128226469727479206973';
wwv_flow_api.g_varchar2_table(166) := '206E6F74206120737472696E672C2061626F7274696E6722297D696628216E2E6973537570706F72746564297B696628226F626A656374223D3D3D4728742E746F53746174696348544D4C297C7C2266756E6374696F6E223D3D747970656F6620742E74';
wwv_flow_api.g_varchar2_table(167) := '6F53746174696348544D4C297B69662822737472696E67223D3D747970656F6620652972657475726E20742E746F53746174696348544D4C2865293B69662873742865292972657475726E20742E746F53746174696348544D4C28652E6F757465724854';
wwv_flow_api.g_varchar2_table(168) := '4D4C297D72657475726E20657D6966284C657C7C5865286F292C6E2E72656D6F7665643D5B5D2C22737472696E67223D3D747970656F6620652626286A653D2131292C6A65293B656C7365206966286520696E7374616E63656F66206329313D3D3D286C';
wwv_flow_api.g_varchar2_table(169) := '3D28693D617428225C783363212D2D2D2D5C7833652229292E6F776E6572446F63756D656E742E696D706F72744E6F646528652C213029292E6E6F646554797065262622424F4459223D3D3D6C2E6E6F64654E616D657C7C2248544D4C223D3D3D6C2E6E';
wwv_flow_api.g_varchar2_table(170) := '6F64654E616D653F693D6C3A692E617070656E644368696C64286C293B656C73657B6966282146652626214E652626214F6526262D313D3D3D652E696E6465784F6628223C22292972657475726E206F6526267A653F6F652E63726561746548544D4C28';
wwv_flow_api.g_varchar2_table(171) := '65293A653B6966282128693D6174286529292972657475726E2046653F6E756C6C3A69657D6926264D6526266F7428692E66697273744368696C64293B666F7228766172206D3D6C74286A653F653A69293B733D6D2E6E6578744E6F646528293B29333D';
wwv_flow_api.g_varchar2_table(172) := '3D3D732E6E6F6465547970652626733D3D3D757C7C66742873297C7C28732E636F6E74656E7420696E7374616E63656F6620612626707428732E636F6E74656E74292C64742873292C753D73293B696628753D6E756C6C2C6A652972657475726E20653B';
wwv_flow_api.g_varchar2_table(173) := '6966284665297B696628436529666F7228663D75652E63616C6C28692E6F776E6572446F63756D656E74293B692E66697273744368696C643B29662E617070656E644368696C6428692E66697273744368696C64293B656C736520663D693B7265747572';
wwv_flow_api.g_varchar2_table(174) := '6E204965262628663D66652E63616C6C28722C662C213029292C667D76617220643D4F653F692E6F7574657248544D4C3A692E696E6E657248544D4C3B72657475726E204E65262628643D7928642C70652C222022292C643D7928642C67652C22202229';
wwv_flow_api.g_varchar2_table(175) := '292C6F6526267A653F6F652E63726561746548544D4C2864293A647D2C6E2E736574436F6E6669673D66756E6374696F6E2865297B58652865292C4C653D21307D2C6E2E636C656172436F6E6669673D66756E6374696F6E28297B56653D6E756C6C2C4C';
wwv_flow_api.g_varchar2_table(176) := '653D21317D2C6E2E697356616C69644174747269627574653D66756E6374696F6E28652C742C6E297B56657C7C5865287B7D293B76617220723D672865292C6F3D672874293B72657475726E206D7428722C6F2C6E297D2C6E2E616464486F6F6B3D6675';
wwv_flow_api.g_varchar2_table(177) := '6E6374696F6E28652C74297B2266756E6374696F6E223D3D747970656F66207426262864655B655D3D64655B655D7C7C5B5D2C702864655B655D2C7429297D2C6E2E72656D6F7665486F6F6B3D66756E6374696F6E2865297B64655B655D262664286465';
wwv_flow_api.g_varchar2_table(178) := '5B655D297D2C6E2E72656D6F7665486F6F6B733D66756E6374696F6E2865297B64655B655D26262864655B655D3D5B5D297D2C6E2E72656D6F7665416C6C486F6F6B733D66756E6374696F6E28297B64653D7B7D7D2C6E7D28297D29293B0A2F2F232073';
wwv_flow_api.g_varchar2_table(179) := '6F757263654D617070696E6755524C3D7075726966792E6D696E2E6A732E6D61700A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(149720932585111624)
,p_plugin_id=>wwv_flow_api.id(81041461157632344)
,p_file_name=>'js/dompurify/2.2.6/purify.min.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2120406C6963656E736520444F4D507572696679207C202863292043757265353320616E64206F7468657220636F6E7472696275746F7273207C2052656C656173656420756E6465722074686520417061636865206C6963656E736520322E302061';
wwv_flow_api.g_varchar2_table(2) := '6E64204D6F7A696C6C61205075626C6963204C6963656E736520322E30207C206769746875622E636F6D2F6375726535332F444F4D5075726966792F626C6F622F322E322E322F4C4943454E5345202A2F0A0A2866756E6374696F6E2028676C6F62616C';
wwv_flow_api.g_varchar2_table(3) := '2C20666163746F727929207B0A2020747970656F66206578706F727473203D3D3D20276F626A6563742720262620747970656F66206D6F64756C6520213D3D2027756E646566696E656427203F206D6F64756C652E6578706F727473203D20666163746F';
wwv_flow_api.g_varchar2_table(4) := '72792829203A0A2020747970656F6620646566696E65203D3D3D202766756E6374696F6E2720262620646566696E652E616D64203F20646566696E6528666163746F727929203A0A202028676C6F62616C203D20676C6F62616C207C7C2073656C662C20';
wwv_flow_api.g_varchar2_table(5) := '676C6F62616C2E444F4D507572696679203D20666163746F72792829293B0A7D28746869732C2066756E6374696F6E202829207B202775736520737472696374273B0A0A202066756E6374696F6E205F746F436F6E73756D61626C654172726179286172';
wwv_flow_api.g_varchar2_table(6) := '7229207B206966202841727261792E69734172726179286172722929207B20666F7220287661722069203D20302C2061727232203D204172726179286172722E6C656E677468293B2069203C206172722E6C656E6774683B20692B2B29207B2061727232';
wwv_flow_api.g_varchar2_table(7) := '5B695D203D206172725B695D3B207D2072657475726E20617272323B207D20656C7365207B2072657475726E2041727261792E66726F6D28617272293B207D207D0A0A2020766172206861734F776E50726F7065727479203D204F626A6563742E686173';
wwv_flow_api.g_varchar2_table(8) := '4F776E50726F70657274792C0A20202020202073657450726F746F747970654F66203D204F626A6563742E73657450726F746F747970654F662C0A202020202020697346726F7A656E203D204F626A6563742E697346726F7A656E2C0A20202020202067';
wwv_flow_api.g_varchar2_table(9) := '657450726F746F747970654F66203D204F626A6563742E67657450726F746F747970654F662C0A2020202020206765744F776E50726F706572747944657363726970746F72203D204F626A6563742E6765744F776E50726F706572747944657363726970';
wwv_flow_api.g_varchar2_table(10) := '746F723B0A202076617220667265657A65203D204F626A6563742E667265657A652C0A2020202020207365616C203D204F626A6563742E7365616C2C0A202020202020637265617465203D204F626A6563742E6372656174653B202F2F2065736C696E74';
wwv_flow_api.g_varchar2_table(11) := '2D64697361626C652D6C696E6520696D706F72742F6E6F2D6D757461626C652D6578706F7274730A0A2020766172205F726566203D20747970656F66205265666C65637420213D3D2027756E646566696E656427202626205265666C6563742C0A202020';
wwv_flow_api.g_varchar2_table(12) := '2020206170706C79203D205F7265662E6170706C792C0A202020202020636F6E737472756374203D205F7265662E636F6E7374727563743B0A0A202069662028216170706C7929207B0A202020206170706C79203D2066756E6374696F6E206170706C79';
wwv_flow_api.g_varchar2_table(13) := '2866756E2C207468697356616C75652C206172677329207B0A20202020202072657475726E2066756E2E6170706C79287468697356616C75652C2061726773293B0A202020207D3B0A20207D0A0A20206966202821667265657A6529207B0A2020202066';
wwv_flow_api.g_varchar2_table(14) := '7265657A65203D2066756E6374696F6E20667265657A65287829207B0A20202020202072657475726E20783B0A202020207D3B0A20207D0A0A202069662028217365616C29207B0A202020207365616C203D2066756E6374696F6E207365616C28782920';
wwv_flow_api.g_varchar2_table(15) := '7B0A20202020202072657475726E20783B0A202020207D3B0A20207D0A0A20206966202821636F6E73747275637429207B0A20202020636F6E737472756374203D2066756E6374696F6E20636F6E7374727563742846756E632C206172677329207B0A20';
wwv_flow_api.g_varchar2_table(16) := '202020202072657475726E206E6577202846756E6374696F6E2E70726F746F747970652E62696E642E6170706C792846756E632C205B6E756C6C5D2E636F6E636174285F746F436F6E73756D61626C65417272617928617267732929292928293B0A2020';
wwv_flow_api.g_varchar2_table(17) := '20207D3B0A20207D0A0A2020766172206172726179466F7245616368203D20756E6170706C792841727261792E70726F746F747970652E666F7245616368293B0A2020766172206172726179506F70203D20756E6170706C792841727261792E70726F74';
wwv_flow_api.g_varchar2_table(18) := '6F747970652E706F70293B0A202076617220617272617950757368203D20756E6170706C792841727261792E70726F746F747970652E70757368293B0A0A202076617220737472696E67546F4C6F77657243617365203D20756E6170706C792853747269';
wwv_flow_api.g_varchar2_table(19) := '6E672E70726F746F747970652E746F4C6F77657243617365293B0A202076617220737472696E674D61746368203D20756E6170706C7928537472696E672E70726F746F747970652E6D61746368293B0A202076617220737472696E675265706C61636520';
wwv_flow_api.g_varchar2_table(20) := '3D20756E6170706C7928537472696E672E70726F746F747970652E7265706C616365293B0A202076617220737472696E67496E6465784F66203D20756E6170706C7928537472696E672E70726F746F747970652E696E6465784F66293B0A202076617220';
wwv_flow_api.g_varchar2_table(21) := '737472696E675472696D203D20756E6170706C7928537472696E672E70726F746F747970652E7472696D293B0A0A20207661722072656745787054657374203D20756E6170706C79285265674578702E70726F746F747970652E74657374293B0A0A2020';
wwv_flow_api.g_varchar2_table(22) := '76617220747970654572726F72437265617465203D20756E636F6E73747275637428547970654572726F72293B0A0A202066756E6374696F6E20756E6170706C792866756E6329207B0A2020202072657475726E2066756E6374696F6E20287468697341';
wwv_flow_api.g_varchar2_table(23) := '726729207B0A202020202020666F722028766172205F6C656E203D20617267756D656E74732E6C656E6774682C2061726773203D204172726179285F6C656E203E2031203F205F6C656E202D2031203A2030292C205F6B6579203D20313B205F6B657920';
wwv_flow_api.g_varchar2_table(24) := '3C205F6C656E3B205F6B65792B2B29207B0A2020202020202020617267735B5F6B6579202D20315D203D20617267756D656E74735B5F6B65795D3B0A2020202020207D0A0A20202020202072657475726E206170706C792866756E632C20746869734172';
wwv_flow_api.g_varchar2_table(25) := '672C2061726773293B0A202020207D3B0A20207D0A0A202066756E6374696F6E20756E636F6E7374727563742866756E6329207B0A2020202072657475726E2066756E6374696F6E202829207B0A202020202020666F722028766172205F6C656E32203D';
wwv_flow_api.g_varchar2_table(26) := '20617267756D656E74732E6C656E6774682C2061726773203D204172726179285F6C656E32292C205F6B657932203D20303B205F6B657932203C205F6C656E323B205F6B6579322B2B29207B0A2020202020202020617267735B5F6B6579325D203D2061';
wwv_flow_api.g_varchar2_table(27) := '7267756D656E74735B5F6B6579325D3B0A2020202020207D0A0A20202020202072657475726E20636F6E7374727563742866756E632C2061726773293B0A202020207D3B0A20207D0A0A20202F2A204164642070726F7065727469657320746F2061206C';
wwv_flow_api.g_varchar2_table(28) := '6F6F6B7570207461626C65202A2F0A202066756E6374696F6E20616464546F536574287365742C20617272617929207B0A202020206966202873657450726F746F747970654F6629207B0A2020202020202F2F204D616B652027696E2720616E64207472';
wwv_flow_api.g_varchar2_table(29) := '7574687920636865636B73206C696B6520426F6F6C65616E287365742E636F6E7374727563746F72290A2020202020202F2F20696E646570656E64656E74206F6620616E792070726F7065727469657320646566696E6564206F6E204F626A6563742E70';
wwv_flow_api.g_varchar2_table(30) := '726F746F747970652E0A2020202020202F2F2050726576656E742070726F746F7479706520736574746572732066726F6D20696E74657263657074696E6720736574206173206120746869732076616C75652E0A20202020202073657450726F746F7479';
wwv_flow_api.g_varchar2_table(31) := '70654F66287365742C206E756C6C293B0A202020207D0A0A20202020766172206C203D2061727261792E6C656E6774683B0A202020207768696C6520286C2D2D29207B0A20202020202076617220656C656D656E74203D2061727261795B6C5D3B0A2020';
wwv_flow_api.g_varchar2_table(32) := '2020202069662028747970656F6620656C656D656E74203D3D3D2027737472696E672729207B0A2020202020202020766172206C63456C656D656E74203D20737472696E67546F4C6F7765724361736528656C656D656E74293B0A202020202020202069';
wwv_flow_api.g_varchar2_table(33) := '6620286C63456C656D656E7420213D3D20656C656D656E7429207B0A202020202020202020202F2F20436F6E66696720707265736574732028652E672E20746167732E6A732C2061747472732E6A73292061726520696D6D757461626C652E0A20202020';
wwv_flow_api.g_varchar2_table(34) := '2020202020206966202821697346726F7A656E2861727261792929207B0A20202020202020202020202061727261795B6C5D203D206C63456C656D656E743B0A202020202020202020207D0A0A20202020202020202020656C656D656E74203D206C6345';
wwv_flow_api.g_varchar2_table(35) := '6C656D656E743B0A20202020202020207D0A2020202020207D0A0A2020202020207365745B656C656D656E745D203D20747275653B0A202020207D0A0A2020202072657475726E207365743B0A20207D0A0A20202F2A205368616C6C6F7720636C6F6E65';
wwv_flow_api.g_varchar2_table(36) := '20616E206F626A656374202A2F0A202066756E6374696F6E20636C6F6E65286F626A65637429207B0A20202020766172206E65774F626A656374203D20637265617465286E756C6C293B0A0A202020207661722070726F7065727479203D20766F696420';
wwv_flow_api.g_varchar2_table(37) := '303B0A20202020666F72202870726F706572747920696E206F626A65637429207B0A202020202020696620286170706C79286861734F776E50726F70657274792C206F626A6563742C205B70726F70657274795D2929207B0A20202020202020206E6577';
wwv_flow_api.g_varchar2_table(38) := '4F626A6563745B70726F70657274795D203D206F626A6563745B70726F70657274795D3B0A2020202020207D0A202020207D0A0A2020202072657475726E206E65774F626A6563743B0A20207D0A0A20202F2A204945313020646F65736E277420737570';
wwv_flow_api.g_varchar2_table(39) := '706F7274205F5F6C6F6F6B75704765747465725F5F20736F206C657473270A2020202A2073696D756C6174652069742E20497420616C736F206175746F6D61746963616C6C7920636865636B730A2020202A206966207468652070726F70206973206675';
wwv_flow_api.g_varchar2_table(40) := '6E6374696F6E206F722067657474657220616E6420626568617665730A2020202A206163636F7264696E676C792E202A2F0A202066756E6374696F6E206C6F6F6B7570476574746572286F626A6563742C2070726F7029207B0A202020207768696C6520';
wwv_flow_api.g_varchar2_table(41) := '286F626A65637420213D3D206E756C6C29207B0A2020202020207661722064657363203D206765744F776E50726F706572747944657363726970746F72286F626A6563742C2070726F70293B0A202020202020696620286465736329207B0A2020202020';
wwv_flow_api.g_varchar2_table(42) := '20202069662028646573632E67657429207B0A2020202020202020202072657475726E20756E6170706C7928646573632E676574293B0A20202020202020207D0A0A202020202020202069662028747970656F6620646573632E76616C7565203D3D3D20';
wwv_flow_api.g_varchar2_table(43) := '2766756E6374696F6E2729207B0A2020202020202020202072657475726E20756E6170706C7928646573632E76616C7565293B0A20202020202020207D0A2020202020207D0A0A2020202020206F626A656374203D2067657450726F746F747970654F66';
wwv_flow_api.g_varchar2_table(44) := '286F626A656374293B0A202020207D0A0A2020202072657475726E206E756C6C3B0A20207D0A0A20207661722068746D6C203D20667265657A65285B2761272C202761626272272C20276163726F6E796D272C202761646472657373272C202761726561';
wwv_flow_api.g_varchar2_table(45) := '272C202761727469636C65272C20276173696465272C2027617564696F272C202762272C2027626469272C202762646F272C2027626967272C2027626C696E6B272C2027626C6F636B71756F7465272C2027626F6479272C20276272272C202762757474';
wwv_flow_api.g_varchar2_table(46) := '6F6E272C202763616E766173272C202763617074696F6E272C202763656E746572272C202763697465272C2027636F6465272C2027636F6C272C2027636F6C67726F7570272C2027636F6E74656E74272C202764617461272C2027646174616C69737427';
wwv_flow_api.g_varchar2_table(47) := '2C20276464272C20276465636F7261746F72272C202764656C272C202764657461696C73272C202764666E272C20276469616C6F67272C2027646972272C2027646976272C2027646C272C20276474272C2027656C656D656E74272C2027656D272C2027';
wwv_flow_api.g_varchar2_table(48) := '6669656C64736574272C202766696763617074696F6E272C2027666967757265272C2027666F6E74272C2027666F6F746572272C2027666F726D272C20276831272C20276832272C20276833272C20276834272C20276835272C20276836272C20276865';
wwv_flow_api.g_varchar2_table(49) := '6164272C2027686561646572272C20276867726F7570272C20276872272C202768746D6C272C202769272C2027696D67272C2027696E707574272C2027696E73272C20276B6264272C20276C6162656C272C20276C6567656E64272C20276C69272C2027';
wwv_flow_api.g_varchar2_table(50) := '6D61696E272C20276D6170272C20276D61726B272C20276D617271756565272C20276D656E75272C20276D656E756974656D272C20276D65746572272C20276E6176272C20276E6F6272272C20276F6C272C20276F707467726F7570272C20276F707469';
wwv_flow_api.g_varchar2_table(51) := '6F6E272C20276F7574707574272C202770272C202770696374757265272C2027707265272C202770726F6772657373272C202771272C20277270272C20277274272C202772756279272C202773272C202773616D70272C202773656374696F6E272C2027';
wwv_flow_api.g_varchar2_table(52) := '73656C656374272C2027736861646F77272C2027736D616C6C272C2027736F75726365272C2027737061636572272C20277370616E272C2027737472696B65272C20277374726F6E67272C20277374796C65272C2027737562272C202773756D6D617279';
wwv_flow_api.g_varchar2_table(53) := '272C2027737570272C20277461626C65272C202774626F6479272C20277464272C202774656D706C617465272C20277465787461726561272C202774666F6F74272C20277468272C20277468656164272C202774696D65272C20277472272C2027747261';
wwv_flow_api.g_varchar2_table(54) := '636B272C20277474272C202775272C2027756C272C2027766172272C2027766964656F272C2027776272275D293B0A0A20202F2F205356470A202076617220737667203D20667265657A65285B27737667272C202761272C2027616C74676C797068272C';
wwv_flow_api.g_varchar2_table(55) := '2027616C74676C797068646566272C2027616C74676C7970686974656D272C2027616E696D617465636F6C6F72272C2027616E696D6174656D6F74696F6E272C2027616E696D6174657472616E73666F726D272C2027636972636C65272C2027636C6970';
wwv_flow_api.g_varchar2_table(56) := '70617468272C202764656673272C202764657363272C2027656C6C69707365272C202766696C746572272C2027666F6E74272C202767272C2027676C797068272C2027676C797068726566272C2027686B65726E272C2027696D616765272C20276C696E';
wwv_flow_api.g_varchar2_table(57) := '65272C20276C696E6561726772616469656E74272C20276D61726B6572272C20276D61736B272C20276D65746164617461272C20276D70617468272C202770617468272C20277061747465726E272C2027706F6C79676F6E272C2027706F6C796C696E65';
wwv_flow_api.g_varchar2_table(58) := '272C202772616469616C6772616469656E74272C202772656374272C202773746F70272C20277374796C65272C2027737769746368272C202773796D626F6C272C202774657874272C20277465787470617468272C20277469746C65272C202774726566';
wwv_flow_api.g_varchar2_table(59) := '272C2027747370616E272C202776696577272C2027766B65726E275D293B0A0A20207661722073766746696C74657273203D20667265657A65285B276665426C656E64272C20276665436F6C6F724D6174726978272C20276665436F6D706F6E656E7454';
wwv_flow_api.g_varchar2_table(60) := '72616E73666572272C20276665436F6D706F73697465272C20276665436F6E766F6C76654D6174726978272C20276665446966667573654C69676874696E67272C20276665446973706C6163656D656E744D6170272C2027666544697374616E744C6967';
wwv_flow_api.g_varchar2_table(61) := '6874272C20276665466C6F6F64272C2027666546756E6341272C2027666546756E6342272C2027666546756E6347272C2027666546756E6352272C20276665476175737369616E426C7572272C202766654D65726765272C202766654D657267654E6F64';
wwv_flow_api.g_varchar2_table(62) := '65272C202766654D6F7270686F6C6F6779272C202766654F6666736574272C20276665506F696E744C69676874272C2027666553706563756C61724C69676874696E67272C2027666553706F744C69676874272C2027666554696C65272C202766655475';
wwv_flow_api.g_varchar2_table(63) := '7262756C656E6365275D293B0A0A20202F2F204C697374206F662053564720656C656D656E747320746861742061726520646973616C6C6F7765642062792064656661756C742E0A20202F2F205765207374696C6C206E65656420746F206B6E6F772074';
wwv_flow_api.g_varchar2_table(64) := '68656D20736F20746861742077652063616E20646F206E616D6573706163650A20202F2F20636865636B732070726F7065726C7920696E2063617365206F6E652077616E747320746F20616464207468656D20746F0A20202F2F20616C6C6F772D6C6973';
wwv_flow_api.g_varchar2_table(65) := '742E0A202076617220737667446973616C6C6F776564203D20667265657A65285B27616E696D617465272C2027636F6C6F722D70726F66696C65272C2027637572736F72272C202764697363617264272C2027666564726F70736861646F77272C202766';
wwv_flow_api.g_varchar2_table(66) := '65696D616765272C2027666F6E742D66616365272C2027666F6E742D666163652D666F726D6174272C2027666F6E742D666163652D6E616D65272C2027666F6E742D666163652D737263272C2027666F6E742D666163652D757269272C2027666F726569';
wwv_flow_api.g_varchar2_table(67) := '676E6F626A656374272C20276861746368272C2027686174636870617468272C20276D657368272C20276D6573686772616469656E74272C20276D6573687061746368272C20276D657368726F77272C20276D697373696E672D676C797068272C202773';
wwv_flow_api.g_varchar2_table(68) := '6372697074272C2027736574272C2027736F6C6964636F6C6F72272C2027756E6B6E6F776E272C2027757365275D293B0A0A2020766172206D6174684D6C203D20667265657A65285B276D617468272C20276D656E636C6F7365272C20276D6572726F72';
wwv_flow_api.g_varchar2_table(69) := '272C20276D66656E636564272C20276D66726163272C20276D676C797068272C20276D69272C20276D6C6162656C65647472272C20276D6D756C746973637269707473272C20276D6E272C20276D6F272C20276D6F766572272C20276D70616464656427';
wwv_flow_api.g_varchar2_table(70) := '2C20276D7068616E746F6D272C20276D726F6F74272C20276D726F77272C20276D73272C20276D7370616365272C20276D73717274272C20276D7374796C65272C20276D737562272C20276D737570272C20276D737562737570272C20276D7461626C65';
wwv_flow_api.g_varchar2_table(71) := '272C20276D7464272C20276D74657874272C20276D7472272C20276D756E646572272C20276D756E6465726F766572275D293B0A0A20202F2F2053696D696C61726C7920746F205356472C2077652077616E7420746F206B6E6F7720616C6C204D617468';
wwv_flow_api.g_varchar2_table(72) := '4D4C20656C656D656E74732C0A20202F2F206576656E2074686F7365207468617420776520646973616C6C6F772062792064656661756C742E0A2020766172206D6174684D6C446973616C6C6F776564203D20667265657A65285B276D616374696F6E27';
wwv_flow_api.g_varchar2_table(73) := '2C20276D616C69676E67726F7570272C20276D616C69676E6D61726B272C20276D6C6F6E67646976272C20276D7363617272696573272C20276D736361727279272C20276D7367726F7570272C20276D737461636B272C20276D736C696E65272C20276D';
wwv_flow_api.g_varchar2_table(74) := '73726F77272C202773656D616E74696373272C2027616E6E6F746174696F6E272C2027616E6E6F746174696F6E2D786D6C272C20276D70726573637269707473272C20276E6F6E65275D293B0A0A20207661722074657874203D20667265657A65285B27';
wwv_flow_api.g_varchar2_table(75) := '2374657874275D293B0A0A20207661722068746D6C2431203D20667265657A65285B27616363657074272C2027616374696F6E272C2027616C69676E272C2027616C74272C20276175746F6361706974616C697A65272C20276175746F636F6D706C6574';
wwv_flow_api.g_varchar2_table(76) := '65272C20276175746F70696374757265696E70696374757265272C20276175746F706C6179272C20276261636B67726F756E64272C20276267636F6C6F72272C2027626F72646572272C202763617074757265272C202763656C6C70616464696E67272C';
wwv_flow_api.g_varchar2_table(77) := '202763656C6C73706163696E67272C2027636865636B6564272C202763697465272C2027636C617373272C2027636C656172272C2027636F6C6F72272C2027636F6C73272C2027636F6C7370616E272C2027636F6E74726F6C73272C2027636F6E74726F';
wwv_flow_api.g_varchar2_table(78) := '6C736C697374272C2027636F6F726473272C202763726F73736F726967696E272C20276461746574696D65272C20276465636F64696E67272C202764656661756C74272C2027646972272C202764697361626C6564272C202764697361626C6570696374';
wwv_flow_api.g_varchar2_table(79) := '757265696E70696374757265272C202764697361626C6572656D6F7465706C61796261636B272C2027646F776E6C6F6164272C2027647261676761626C65272C2027656E6374797065272C2027656E7465726B657968696E74272C202766616365272C20';
wwv_flow_api.g_varchar2_table(80) := '27666F72272C202768656164657273272C2027686569676874272C202768696464656E272C202768696768272C202768726566272C2027687265666C616E67272C20276964272C2027696E7075746D6F6465272C2027696E74656772697479272C202769';
wwv_flow_api.g_varchar2_table(81) := '736D6170272C20276B696E64272C20276C6162656C272C20276C616E67272C20276C697374272C20276C6F6164696E67272C20276C6F6F70272C20276C6F77272C20276D6178272C20276D61786C656E677468272C20276D65646961272C20276D657468';
wwv_flow_api.g_varchar2_table(82) := '6F64272C20276D696E272C20276D696E6C656E677468272C20276D756C7469706C65272C20276D75746564272C20276E616D65272C20276E6F7368616465272C20276E6F76616C6964617465272C20276E6F77726170272C20276F70656E272C20276F70';
wwv_flow_api.g_varchar2_table(83) := '74696D756D272C20277061747465726E272C2027706C616365686F6C646572272C2027706C617973696E6C696E65272C2027706F73746572272C20277072656C6F6164272C202770756264617465272C2027726164696F67726F7570272C202772656164';
wwv_flow_api.g_varchar2_table(84) := '6F6E6C79272C202772656C272C20277265717569726564272C2027726576272C20277265766572736564272C2027726F6C65272C2027726F7773272C2027726F777370616E272C20277370656C6C636865636B272C202773636F7065272C202773656C65';
wwv_flow_api.g_varchar2_table(85) := '63746564272C20277368617065272C202773697A65272C202773697A6573272C20277370616E272C20277372636C616E67272C20277374617274272C2027737263272C2027737263736574272C202773746570272C20277374796C65272C202773756D6D';
wwv_flow_api.g_varchar2_table(86) := '617279272C2027746162696E646578272C20277469746C65272C20277472616E736C617465272C202774797065272C20277573656D6170272C202776616C69676E272C202776616C7565272C20277769647468272C2027786D6C6E73275D293B0A0A2020';
wwv_flow_api.g_varchar2_table(87) := '766172207376672431203D20667265657A65285B27616363656E742D686569676874272C2027616363756D756C617465272C20276164646974697665272C2027616C69676E6D656E742D626173656C696E65272C2027617363656E74272C202761747472';
wwv_flow_api.g_varchar2_table(88) := '69627574656E616D65272C202761747472696275746574797065272C2027617A696D757468272C2027626173656672657175656E6379272C2027626173656C696E652D7368696674272C2027626567696E272C202762696173272C20276279272C202763';
wwv_flow_api.g_varchar2_table(89) := '6C617373272C2027636C6970272C2027636C697070617468756E697473272C2027636C69702D70617468272C2027636C69702D72756C65272C2027636F6C6F72272C2027636F6C6F722D696E746572706F6C6174696F6E272C2027636F6C6F722D696E74';
wwv_flow_api.g_varchar2_table(90) := '6572706F6C6174696F6E2D66696C74657273272C2027636F6C6F722D70726F66696C65272C2027636F6C6F722D72656E646572696E67272C20276378272C20276379272C202764272C20276478272C20276479272C202764696666757365636F6E737461';
wwv_flow_api.g_varchar2_table(91) := '6E74272C2027646972656374696F6E272C2027646973706C6179272C202764697669736F72272C2027647572272C2027656467656D6F6465272C2027656C65766174696F6E272C2027656E64272C202766696C6C272C202766696C6C2D6F706163697479';
wwv_flow_api.g_varchar2_table(92) := '272C202766696C6C2D72756C65272C202766696C746572272C202766696C746572756E697473272C2027666C6F6F642D636F6C6F72272C2027666C6F6F642D6F706163697479272C2027666F6E742D66616D696C79272C2027666F6E742D73697A65272C';
wwv_flow_api.g_varchar2_table(93) := '2027666F6E742D73697A652D61646A757374272C2027666F6E742D73747265746368272C2027666F6E742D7374796C65272C2027666F6E742D76617269616E74272C2027666F6E742D776569676874272C20276678272C20276679272C20276731272C20';
wwv_flow_api.g_varchar2_table(94) := '276732272C2027676C7970682D6E616D65272C2027676C797068726566272C20276772616469656E74756E697473272C20276772616469656E747472616E73666F726D272C2027686569676874272C202768726566272C20276964272C2027696D616765';
wwv_flow_api.g_varchar2_table(95) := '2D72656E646572696E67272C2027696E272C2027696E32272C20276B272C20276B31272C20276B32272C20276B33272C20276B34272C20276B65726E696E67272C20276B6579706F696E7473272C20276B657973706C696E6573272C20276B657974696D';
wwv_flow_api.g_varchar2_table(96) := '6573272C20276C616E67272C20276C656E67746861646A757374272C20276C65747465722D73706163696E67272C20276B65726E656C6D6174726978272C20276B65726E656C756E69746C656E677468272C20276C69676874696E672D636F6C6F72272C';
wwv_flow_api.g_varchar2_table(97) := '20276C6F63616C272C20276D61726B65722D656E64272C20276D61726B65722D6D6964272C20276D61726B65722D7374617274272C20276D61726B6572686569676874272C20276D61726B6572756E697473272C20276D61726B65727769647468272C20';
wwv_flow_api.g_varchar2_table(98) := '276D61736B636F6E74656E74756E697473272C20276D61736B756E697473272C20276D6178272C20276D61736B272C20276D65646961272C20276D6574686F64272C20276D6F6465272C20276D696E272C20276E616D65272C20276E756D6F6374617665';
wwv_flow_api.g_varchar2_table(99) := '73272C20276F6666736574272C20276F70657261746F72272C20276F706163697479272C20276F72646572272C20276F7269656E74272C20276F7269656E746174696F6E272C20276F726967696E272C20276F766572666C6F77272C20277061696E742D';
wwv_flow_api.g_varchar2_table(100) := '6F72646572272C202770617468272C2027706174686C656E677468272C20277061747465726E636F6E74656E74756E697473272C20277061747465726E7472616E73666F726D272C20277061747465726E756E697473272C2027706F696E7473272C2027';
wwv_flow_api.g_varchar2_table(101) := '7072657365727665616C706861272C20277072657365727665617370656374726174696F272C20277072696D6974697665756E697473272C202772272C20277278272C20277279272C2027726164697573272C202772656678272C202772656679272C20';
wwv_flow_api.g_varchar2_table(102) := '27726570656174636F756E74272C2027726570656174647572272C202772657374617274272C2027726573756C74272C2027726F74617465272C20277363616C65272C202773656564272C202773686170652D72656E646572696E67272C202773706563';
wwv_flow_api.g_varchar2_table(103) := '756C6172636F6E7374616E74272C202773706563756C61726578706F6E656E74272C20277370726561646D6574686F64272C202773746172746F6666736574272C2027737464646576696174696F6E272C202773746974636874696C6573272C20277374';
wwv_flow_api.g_varchar2_table(104) := '6F702D636F6C6F72272C202773746F702D6F706163697479272C20277374726F6B652D646173686172726179272C20277374726F6B652D646173686F6666736574272C20277374726F6B652D6C696E65636170272C20277374726F6B652D6C696E656A6F';
wwv_flow_api.g_varchar2_table(105) := '696E272C20277374726F6B652D6D697465726C696D6974272C20277374726F6B652D6F706163697479272C20277374726F6B65272C20277374726F6B652D7769647468272C20277374796C65272C2027737572666163657363616C65272C202773797374';
wwv_flow_api.g_varchar2_table(106) := '656D6C616E6775616765272C2027746162696E646578272C202774617267657478272C202774617267657479272C20277472616E73666F726D272C2027746578742D616E63686F72272C2027746578742D6465636F726174696F6E272C2027746578742D';
wwv_flow_api.g_varchar2_table(107) := '72656E646572696E67272C2027746578746C656E677468272C202774797065272C20277531272C20277532272C2027756E69636F6465272C202776616C756573272C202776696577626F78272C20277669736962696C697479272C202776657273696F6E';
wwv_flow_api.g_varchar2_table(108) := '272C2027766572742D6164762D79272C2027766572742D6F726967696E2D78272C2027766572742D6F726967696E2D79272C20277769647468272C2027776F72642D73706163696E67272C202777726170272C202777726974696E672D6D6F6465272C20';
wwv_flow_api.g_varchar2_table(109) := '27786368616E6E656C73656C6563746F72272C2027796368616E6E656C73656C6563746F72272C202778272C20277831272C20277832272C2027786D6C6E73272C202779272C20277931272C20277932272C20277A272C20277A6F6F6D616E6470616E27';
wwv_flow_api.g_varchar2_table(110) := '5D293B0A0A2020766172206D6174684D6C2431203D20667265657A65285B27616363656E74272C2027616363656E74756E646572272C2027616C69676E272C2027626576656C6C6564272C2027636C6F7365272C2027636F6C756D6E73616C69676E272C';
wwv_flow_api.g_varchar2_table(111) := '2027636F6C756D6E6C696E6573272C2027636F6C756D6E7370616E272C202764656E6F6D616C69676E272C20276465707468272C2027646972272C2027646973706C6179272C2027646973706C61797374796C65272C2027656E636F64696E67272C2027';
wwv_flow_api.g_varchar2_table(112) := '66656E6365272C20276672616D65272C2027686569676874272C202768726566272C20276964272C20276C617267656F70272C20276C656E677468272C20276C696E65746869636B6E657373272C20276C7370616365272C20276C71756F7465272C2027';
wwv_flow_api.g_varchar2_table(113) := '6D6174686261636B67726F756E64272C20276D617468636F6C6F72272C20276D61746873697A65272C20276D61746876617269616E74272C20276D617873697A65272C20276D696E73697A65272C20276D6F7661626C656C696D697473272C20276E6F74';
wwv_flow_api.g_varchar2_table(114) := '6174696F6E272C20276E756D616C69676E272C20276F70656E272C2027726F77616C69676E272C2027726F776C696E6573272C2027726F7773706163696E67272C2027726F777370616E272C2027727370616365272C20277271756F7465272C20277363';
wwv_flow_api.g_varchar2_table(115) := '726970746C6576656C272C20277363726970746D696E73697A65272C202773637269707473697A656D756C7469706C696572272C202773656C656374696F6E272C2027736570617261746F72272C2027736570617261746F7273272C2027737472657463';
wwv_flow_api.g_varchar2_table(116) := '6879272C20277375627363726970747368696674272C20277375707363726970747368696674272C202773796D6D6574726963272C2027766F6666736574272C20277769647468272C2027786D6C6E73275D293B0A0A202076617220786D6C203D206672';
wwv_flow_api.g_varchar2_table(117) := '65657A65285B27786C696E6B3A68726566272C2027786D6C3A6964272C2027786C696E6B3A7469746C65272C2027786D6C3A7370616365272C2027786D6C6E733A786C696E6B275D293B0A0A20202F2F2065736C696E742D64697361626C652D6E657874';
wwv_flow_api.g_varchar2_table(118) := '2D6C696E6520756E69636F726E2F6265747465722D72656765780A2020766172204D555354414348455F45585052203D207365616C282F5C7B5C7B5B5C735C535D2A7C5B5C735C535D2A5C7D5C7D2F676D293B202F2F20537065636966792074656D706C';
wwv_flow_api.g_varchar2_table(119) := '61746520646574656374696F6E20726567657820666F7220534146455F464F525F54454D504C41544553206D6F64650A2020766172204552425F45585052203D207365616C282F3C255B5C735C535D2A7C5B5C735C535D2A253E2F676D293B0A20207661';
wwv_flow_api.g_varchar2_table(120) := '7220444154415F41545452203D207365616C282F5E646174612D5B5C2D5C772E5C75303042372D5C75464646465D2F293B202F2F2065736C696E742D64697361626C652D6C696E65206E6F2D7573656C6573732D6573636170650A202076617220415249';
wwv_flow_api.g_varchar2_table(121) := '415F41545452203D207365616C282F5E617269612D5B5C2D5C775D2B242F293B202F2F2065736C696E742D64697361626C652D6C696E65206E6F2D7573656C6573732D6573636170650A20207661722049535F414C4C4F5745445F555249203D20736561';
wwv_flow_api.g_varchar2_table(122) := '6C282F5E283F3A283F3A283F3A667C6874297470733F7C6D61696C746F7C74656C7C63616C6C746F7C6369647C786D7070293A7C5B5E612D7A5D7C5B612D7A2B2E5C2D5D2B283F3A5B5E612D7A2B2E5C2D3A5D7C2429292F69202F2F2065736C696E742D';
wwv_flow_api.g_varchar2_table(123) := '64697361626C652D6C696E65206E6F2D7573656C6573732D6573636170650A2020293B0A20207661722049535F5343524950545F4F525F44415441203D207365616C282F5E283F3A5C772B7363726970747C64617461293A2F69293B0A20207661722041';
wwv_flow_api.g_varchar2_table(124) := '5454525F57484954455350414345203D207365616C282F5B5C75303030302D5C75303032305C75303041305C75313638305C75313830455C75323030302D5C75323032395C75323035465C75333030305D2F67202F2F2065736C696E742D64697361626C';
wwv_flow_api.g_varchar2_table(125) := '652D6C696E65206E6F2D636F6E74726F6C2D72656765780A2020293B0A0A2020766172205F747970656F66203D20747970656F662053796D626F6C203D3D3D202266756E6374696F6E2220262620747970656F662053796D626F6C2E6974657261746F72';
wwv_flow_api.g_varchar2_table(126) := '203D3D3D202273796D626F6C22203F2066756E6374696F6E20286F626A29207B2072657475726E20747970656F66206F626A3B207D203A2066756E6374696F6E20286F626A29207B2072657475726E206F626A20262620747970656F662053796D626F6C';
wwv_flow_api.g_varchar2_table(127) := '203D3D3D202266756E6374696F6E22202626206F626A2E636F6E7374727563746F72203D3D3D2053796D626F6C202626206F626A20213D3D2053796D626F6C2E70726F746F74797065203F202273796D626F6C22203A20747970656F66206F626A3B207D';
wwv_flow_api.g_varchar2_table(128) := '3B0A0A202066756E6374696F6E205F746F436F6E73756D61626C65417272617924312861727229207B206966202841727261792E69734172726179286172722929207B20666F7220287661722069203D20302C2061727232203D20417272617928617272';
wwv_flow_api.g_varchar2_table(129) := '2E6C656E677468293B2069203C206172722E6C656E6774683B20692B2B29207B20617272325B695D203D206172725B695D3B207D2072657475726E20617272323B207D20656C7365207B2072657475726E2041727261792E66726F6D28617272293B207D';
wwv_flow_api.g_varchar2_table(130) := '207D0A0A202076617220676574476C6F62616C203D2066756E6374696F6E20676574476C6F62616C2829207B0A2020202072657475726E20747970656F662077696E646F77203D3D3D2027756E646566696E656427203F206E756C6C203A2077696E646F';
wwv_flow_api.g_varchar2_table(131) := '773B0A20207D3B0A0A20202F2A2A0A2020202A20437265617465732061206E6F2D6F7020706F6C69637920666F7220696E7465726E616C20757365206F6E6C792E0A2020202A20446F6E2774206578706F727420746869732066756E6374696F6E206F75';
wwv_flow_api.g_varchar2_table(132) := '74736964652074686973206D6F64756C65210A2020202A2040706172616D207B3F5472757374656454797065506F6C696379466163746F72797D207472757374656454797065732054686520706F6C69637920666163746F72792E0A2020202A20407061';
wwv_flow_api.g_varchar2_table(133) := '72616D207B446F63756D656E747D20646F63756D656E742054686520646F63756D656E74206F626A6563742028746F2064657465726D696E6520706F6C696379206E616D6520737566666978290A2020202A204072657475726E207B3F54727573746564';
wwv_flow_api.g_varchar2_table(134) := '54797065506F6C6963797D2054686520706F6C696379206372656174656420286F72206E756C6C2C20696620547275737465642054797065730A2020202A20617265206E6F7420737570706F72746564292E0A2020202A2F0A2020766172205F63726561';
wwv_flow_api.g_varchar2_table(135) := '7465547275737465645479706573506F6C696379203D2066756E6374696F6E205F637265617465547275737465645479706573506F6C696379287472757374656454797065732C20646F63756D656E7429207B0A202020206966202828747970656F6620';
wwv_flow_api.g_varchar2_table(136) := '747275737465645479706573203D3D3D2027756E646566696E656427203F2027756E646566696E656427203A205F747970656F6628747275737465645479706573292920213D3D20276F626A65637427207C7C20747970656F6620747275737465645479';
wwv_flow_api.g_varchar2_table(137) := '7065732E637265617465506F6C69637920213D3D202766756E6374696F6E2729207B0A20202020202072657475726E206E756C6C3B0A202020207D0A0A202020202F2F20416C6C6F77207468652063616C6C65727320746F20636F6E74726F6C20746865';
wwv_flow_api.g_varchar2_table(138) := '20756E6971756520706F6C696379206E616D650A202020202F2F20627920616464696E67206120646174612D74742D706F6C6963792D73756666697820746F207468652073637269707420656C656D656E7420776974682074686520444F4D5075726966';
wwv_flow_api.g_varchar2_table(139) := '792E0A202020202F2F20506F6C696379206372656174696F6E2077697468206475706C6963617465206E616D6573207468726F777320696E20547275737465642054797065732E0A2020202076617220737566666978203D206E756C6C3B0A2020202076';
wwv_flow_api.g_varchar2_table(140) := '617220415454525F4E414D45203D2027646174612D74742D706F6C6963792D737566666978273B0A2020202069662028646F63756D656E742E63757272656E7453637269707420262620646F63756D656E742E63757272656E745363726970742E686173';
wwv_flow_api.g_varchar2_table(141) := '41747472696275746528415454525F4E414D452929207B0A202020202020737566666978203D20646F63756D656E742E63757272656E745363726970742E67657441747472696275746528415454525F4E414D45293B0A202020207D0A0A202020207661';
wwv_flow_api.g_varchar2_table(142) := '7220706F6C6963794E616D65203D2027646F6D70757269667927202B2028737566666978203F20272327202B20737566666978203A202727293B0A0A20202020747279207B0A20202020202072657475726E207472757374656454797065732E63726561';
wwv_flow_api.g_varchar2_table(143) := '7465506F6C69637928706F6C6963794E616D652C207B0A202020202020202063726561746548544D4C3A2066756E6374696F6E2063726561746548544D4C2868746D6C24243129207B0A2020202020202020202072657475726E2068746D6C2424313B0A';
wwv_flow_api.g_varchar2_table(144) := '20202020202020207D0A2020202020207D293B0A202020207D20636174636820285F29207B0A2020202020202F2F20506F6C696379206372656174696F6E206661696C656420286D6F7374206C696B656C7920616E6F7468657220444F4D507572696679';
wwv_flow_api.g_varchar2_table(145) := '20736372697074206861730A2020202020202F2F20616C72656164792072756E292E20536B6970206372656174696E672074686520706F6C6963792C20617320746869732077696C6C206F6E6C79206361757365206572726F72730A2020202020202F2F';
wwv_flow_api.g_varchar2_table(146) := '2069662054542061726520656E666F726365642E0A202020202020636F6E736F6C652E7761726E282754727573746564547970657320706F6C6963792027202B20706F6C6963794E616D65202B202720636F756C64206E6F742062652063726561746564';
wwv_flow_api.g_varchar2_table(147) := '2E27293B0A20202020202072657475726E206E756C6C3B0A202020207D0A20207D3B0A0A202066756E6374696F6E20637265617465444F4D5075726966792829207B0A202020207661722077696E646F77203D20617267756D656E74732E6C656E677468';
wwv_flow_api.g_varchar2_table(148) := '203E203020262620617267756D656E74735B305D20213D3D20756E646566696E6564203F20617267756D656E74735B305D203A20676574476C6F62616C28293B0A0A2020202076617220444F4D507572696679203D2066756E6374696F6E20444F4D5075';
wwv_flow_api.g_varchar2_table(149) := '7269667928726F6F7429207B0A20202020202072657475726E20637265617465444F4D50757269667928726F6F74293B0A202020207D3B0A0A202020202F2A2A0A20202020202A2056657273696F6E206C6162656C2C206578706F73656420666F722065';
wwv_flow_api.g_varchar2_table(150) := '617369657220636865636B730A20202020202A20696620444F4D50757269667920697320757020746F2064617465206F72206E6F740A20202020202A2F0A20202020444F4D5075726966792E76657273696F6E203D2027322E322E36273B0A0A20202020';
wwv_flow_api.g_varchar2_table(151) := '2F2A2A0A20202020202A204172726179206F6620656C656D656E7473207468617420444F4D5075726966792072656D6F76656420647572696E672073616E69746174696F6E2E0A20202020202A20456D707479206966206E6F7468696E67207761732072';
wwv_flow_api.g_varchar2_table(152) := '656D6F7665642E0A20202020202A2F0A20202020444F4D5075726966792E72656D6F766564203D205B5D3B0A0A20202020696620282177696E646F77207C7C202177696E646F772E646F63756D656E74207C7C2077696E646F772E646F63756D656E742E';
wwv_flow_api.g_varchar2_table(153) := '6E6F64655479706520213D3D203929207B0A2020202020202F2F204E6F742072756E6E696E6720696E20612062726F777365722C2070726F76696465206120666163746F72792066756E6374696F6E0A2020202020202F2F20736F207468617420796F75';
wwv_flow_api.g_varchar2_table(154) := '2063616E207061737320796F7572206F776E2057696E646F770A202020202020444F4D5075726966792E6973537570706F72746564203D2066616C73653B0A0A20202020202072657475726E20444F4D5075726966793B0A202020207D0A0A2020202076';
wwv_flow_api.g_varchar2_table(155) := '6172206F726967696E616C446F63756D656E74203D2077696E646F772E646F63756D656E743B0A0A2020202076617220646F63756D656E74203D2077696E646F772E646F63756D656E743B0A2020202076617220446F63756D656E74467261676D656E74';
wwv_flow_api.g_varchar2_table(156) := '203D2077696E646F772E446F63756D656E74467261676D656E742C0A202020202020202048544D4C54656D706C617465456C656D656E74203D2077696E646F772E48544D4C54656D706C617465456C656D656E742C0A20202020202020204E6F6465203D';
wwv_flow_api.g_varchar2_table(157) := '2077696E646F772E4E6F64652C0A2020202020202020456C656D656E74203D2077696E646F772E456C656D656E742C0A20202020202020204E6F646546696C746572203D2077696E646F772E4E6F646546696C7465722C0A20202020202020205F77696E';
wwv_flow_api.g_varchar2_table(158) := '646F77244E616D65644E6F64654D6170203D2077696E646F772E4E616D65644E6F64654D61702C0A20202020202020204E616D65644E6F64654D6170203D205F77696E646F77244E616D65644E6F64654D6170203D3D3D20756E646566696E6564203F20';
wwv_flow_api.g_varchar2_table(159) := '77696E646F772E4E616D65644E6F64654D6170207C7C2077696E646F772E4D6F7A4E616D6564417474724D6170203A205F77696E646F77244E616D65644E6F64654D61702C0A202020202020202054657874203D2077696E646F772E546578742C0A2020';
wwv_flow_api.g_varchar2_table(160) := '202020202020436F6D6D656E74203D2077696E646F772E436F6D6D656E742C0A2020202020202020444F4D506172736572203D2077696E646F772E444F4D5061727365722C0A2020202020202020747275737465645479706573203D2077696E646F772E';
wwv_flow_api.g_varchar2_table(161) := '7472757374656454797065733B0A0A0A2020202076617220456C656D656E7450726F746F74797065203D20456C656D656E742E70726F746F747970653B0A0A2020202076617220636C6F6E654E6F6465203D206C6F6F6B757047657474657228456C656D';
wwv_flow_api.g_varchar2_table(162) := '656E7450726F746F747970652C2027636C6F6E654E6F646527293B0A20202020766172206765744E6578745369626C696E67203D206C6F6F6B757047657474657228456C656D656E7450726F746F747970652C20276E6578745369626C696E6727293B0A';
wwv_flow_api.g_varchar2_table(163) := '20202020766172206765744368696C644E6F646573203D206C6F6F6B757047657474657228456C656D656E7450726F746F747970652C20276368696C644E6F64657327293B0A2020202076617220676574506172656E744E6F6465203D206C6F6F6B7570';
wwv_flow_api.g_varchar2_table(164) := '47657474657228456C656D656E7450726F746F747970652C2027706172656E744E6F646527293B0A0A202020202F2F20417320706572206973737565202334372C20746865207765622D636F6D706F6E656E747320726567697374727920697320696E68';
wwv_flow_api.g_varchar2_table(165) := '65726974656420627920610A202020202F2F206E657720646F63756D656E742063726561746564207669612063726561746548544D4C446F63756D656E742E204173207065722074686520737065630A202020202F2F2028687474703A2F2F7733632E67';
wwv_flow_api.g_varchar2_table(166) := '69746875622E696F2F776562636F6D706F6E656E74732F737065632F637573746F6D2F236372656174696E672D616E642D70617373696E672D72656769737472696573290A202020202F2F2061206E657720656D70747920726567697374727920697320';
wwv_flow_api.g_varchar2_table(167) := '75736564207768656E206372656174696E6720612074656D706C61746520636F6E74656E7473206F776E65720A202020202F2F20646F63756D656E742C20736F207765207573652074686174206173206F757220706172656E7420646F63756D656E7420';
wwv_flow_api.g_varchar2_table(168) := '746F20656E73757265206E6F7468696E670A202020202F2F20697320696E686572697465642E0A2020202069662028747970656F662048544D4C54656D706C617465456C656D656E74203D3D3D202766756E6374696F6E2729207B0A2020202020207661';
wwv_flow_api.g_varchar2_table(169) := '722074656D706C617465203D20646F63756D656E742E637265617465456C656D656E74282774656D706C61746527293B0A2020202020206966202874656D706C6174652E636F6E74656E742026262074656D706C6174652E636F6E74656E742E6F776E65';
wwv_flow_api.g_varchar2_table(170) := '72446F63756D656E7429207B0A2020202020202020646F63756D656E74203D2074656D706C6174652E636F6E74656E742E6F776E6572446F63756D656E743B0A2020202020207D0A202020207D0A0A202020207661722074727573746564547970657350';
wwv_flow_api.g_varchar2_table(171) := '6F6C696379203D205F637265617465547275737465645479706573506F6C696379287472757374656454797065732C206F726967696E616C446F63756D656E74293B0A2020202076617220656D70747948544D4C203D2074727573746564547970657350';
wwv_flow_api.g_varchar2_table(172) := '6F6C6963792026262052455455524E5F545255535445445F54595045203F20747275737465645479706573506F6C6963792E63726561746548544D4C28272729203A2027273B0A0A20202020766172205F646F63756D656E74203D20646F63756D656E74';
wwv_flow_api.g_varchar2_table(173) := '2C0A2020202020202020696D706C656D656E746174696F6E203D205F646F63756D656E742E696D706C656D656E746174696F6E2C0A20202020202020206372656174654E6F64654974657261746F72203D205F646F63756D656E742E6372656174654E6F';
wwv_flow_api.g_varchar2_table(174) := '64654974657261746F722C0A2020202020202020676574456C656D656E747342795461674E616D65203D205F646F63756D656E742E676574456C656D656E747342795461674E616D652C0A2020202020202020637265617465446F63756D656E74467261';
wwv_flow_api.g_varchar2_table(175) := '676D656E74203D205F646F63756D656E742E637265617465446F63756D656E74467261676D656E743B0A2020202076617220696D706F72744E6F6465203D206F726967696E616C446F63756D656E742E696D706F72744E6F64653B0A0A0A202020207661';
wwv_flow_api.g_varchar2_table(176) := '7220646F63756D656E744D6F6465203D207B7D3B0A20202020747279207B0A202020202020646F63756D656E744D6F6465203D20636C6F6E6528646F63756D656E74292E646F63756D656E744D6F6465203F20646F63756D656E742E646F63756D656E74';
wwv_flow_api.g_varchar2_table(177) := '4D6F6465203A207B7D3B0A202020207D20636174636820285F29207B7D0A0A2020202076617220686F6F6B73203D207B7D3B0A0A202020202F2A2A0A20202020202A204578706F7365207768657468657220746869732062726F7773657220737570706F';
wwv_flow_api.g_varchar2_table(178) := '7274732072756E6E696E67207468652066756C6C20444F4D5075726966792E0A20202020202A2F0A20202020444F4D5075726966792E6973537570706F72746564203D20696D706C656D656E746174696F6E20262620747970656F6620696D706C656D65';
wwv_flow_api.g_varchar2_table(179) := '6E746174696F6E2E63726561746548544D4C446F63756D656E7420213D3D2027756E646566696E65642720262620646F63756D656E744D6F646520213D3D20393B0A0A20202020766172204D555354414348455F45585052242431203D204D5553544143';
wwv_flow_api.g_varchar2_table(180) := '48455F455850522C0A20202020202020204552425F45585052242431203D204552425F455850522C0A2020202020202020444154415F41545452242431203D20444154415F415454522C0A2020202020202020415249415F41545452242431203D204152';
wwv_flow_api.g_varchar2_table(181) := '49415F415454522C0A202020202020202049535F5343524950545F4F525F44415441242431203D2049535F5343524950545F4F525F444154412C0A2020202020202020415454525F57484954455350414345242431203D20415454525F57484954455350';
wwv_flow_api.g_varchar2_table(182) := '4143453B0A202020207661722049535F414C4C4F5745445F555249242431203D2049535F414C4C4F5745445F5552493B0A0A202020202F2A2A0A20202020202A20576520636F6E73696465722074686520656C656D656E747320616E6420617474726962';
wwv_flow_api.g_varchar2_table(183) := '757465732062656C6F7720746F20626520736166652E20496465616C6C790A20202020202A20646F6E27742061646420616E79206E6577206F6E657320627574206665656C206672656520746F2072656D6F766520756E77616E746564206F6E65732E0A';
wwv_flow_api.g_varchar2_table(184) := '20202020202A2F0A0A202020202F2A20616C6C6F77656420656C656D656E74206E616D6573202A2F0A0A2020202076617220414C4C4F5745445F54414753203D206E756C6C3B0A202020207661722044454641554C545F414C4C4F5745445F5441475320';
wwv_flow_api.g_varchar2_table(185) := '3D20616464546F536574287B7D2C205B5D2E636F6E636174285F746F436F6E73756D61626C65417272617924312868746D6C292C205F746F436F6E73756D61626C654172726179243128737667292C205F746F436F6E73756D61626C6541727261792431';
wwv_flow_api.g_varchar2_table(186) := '2873766746696C74657273292C205F746F436F6E73756D61626C6541727261792431286D6174684D6C292C205F746F436F6E73756D61626C654172726179243128746578742929293B0A0A202020202F2A20416C6C6F7765642061747472696275746520';
wwv_flow_api.g_varchar2_table(187) := '6E616D6573202A2F0A2020202076617220414C4C4F5745445F41545452203D206E756C6C3B0A202020207661722044454641554C545F414C4C4F5745445F41545452203D20616464546F536574287B7D2C205B5D2E636F6E636174285F746F436F6E7375';
wwv_flow_api.g_varchar2_table(188) := '6D61626C65417272617924312868746D6C2431292C205F746F436F6E73756D61626C6541727261792431287376672431292C205F746F436F6E73756D61626C6541727261792431286D6174684D6C2431292C205F746F436F6E73756D61626C6541727261';
wwv_flow_api.g_varchar2_table(189) := '79243128786D6C2929293B0A0A202020202F2A204578706C696369746C7920666F7262696464656E207461677320286F766572726964657320414C4C4F5745445F544147532F4144445F5441475329202A2F0A2020202076617220464F524249445F5441';
wwv_flow_api.g_varchar2_table(190) := '4753203D206E756C6C3B0A0A202020202F2A204578706C696369746C7920666F7262696464656E206174747269627574657320286F766572726964657320414C4C4F5745445F415454522F4144445F4154545229202A2F0A2020202076617220464F5242';
wwv_flow_api.g_varchar2_table(191) := '49445F41545452203D206E756C6C3B0A0A202020202F2A204465636964652069662041524941206174747269627574657320617265206F6B6179202A2F0A2020202076617220414C4C4F575F415249415F41545452203D20747275653B0A0A202020202F';
wwv_flow_api.g_varchar2_table(192) := '2A2044656369646520696620637573746F6D2064617461206174747269627574657320617265206F6B6179202A2F0A2020202076617220414C4C4F575F444154415F41545452203D20747275653B0A0A202020202F2A2044656369646520696620756E6B';
wwv_flow_api.g_varchar2_table(193) := '6E6F776E2070726F746F636F6C7320617265206F6B6179202A2F0A2020202076617220414C4C4F575F554E4B4E4F574E5F50524F544F434F4C53203D2066616C73653B0A0A202020202F2A204F75747075742073686F756C64206265207361666520666F';
wwv_flow_api.g_varchar2_table(194) := '7220636F6D6D6F6E2074656D706C61746520656E67696E65732E0A20202020202A2054686973206D65616E732C20444F4D5075726966792072656D6F766573206461746120617474726962757465732C206D757374616368657320616E64204552420A20';
wwv_flow_api.g_varchar2_table(195) := '202020202A2F0A2020202076617220534146455F464F525F54454D504C41544553203D2066616C73653B0A0A202020202F2A2044656369646520696620646F63756D656E742077697468203C68746D6C3E2E2E2E2073686F756C64206265207265747572';
wwv_flow_api.g_varchar2_table(196) := '6E6564202A2F0A202020207661722057484F4C455F444F43554D454E54203D2066616C73653B0A0A202020202F2A20547261636B207768657468657220636F6E66696720697320616C726561647920736574206F6E207468697320696E7374616E636520';
wwv_flow_api.g_varchar2_table(197) := '6F6620444F4D5075726966792E202A2F0A20202020766172205345545F434F4E464947203D2066616C73653B0A0A202020202F2A2044656369646520696620616C6C20656C656D656E74732028652E672E207374796C652C2073637269707429206D7573';
wwv_flow_api.g_varchar2_table(198) := '74206265206368696C6472656E206F660A20202020202A20646F63756D656E742E626F64792E2042792064656661756C742C2062726F7773657273206D69676874206D6F7665207468656D20746F20646F63756D656E742E68656164202A2F0A20202020';
wwv_flow_api.g_varchar2_table(199) := '76617220464F5243455F424F4459203D2066616C73653B0A0A202020202F2A20446563696465206966206120444F4D206048544D4C426F6479456C656D656E74602073686F756C642062652072657475726E65642C20696E7374656164206F6620612068';
wwv_flow_api.g_varchar2_table(200) := '746D6C0A20202020202A20737472696E6720286F722061205472757374656448544D4C206F626A65637420696620547275737465642054797065732061726520737570706F72746564292E0A20202020202A204966206057484F4C455F444F43554D454E';
wwv_flow_api.g_varchar2_table(201) := '546020697320656E61626C65642061206048544D4C48746D6C456C656D656E74602077696C6C2062652072657475726E656420696E73746561640A20202020202A2F0A202020207661722052455455524E5F444F4D203D2066616C73653B0A0A20202020';
wwv_flow_api.g_varchar2_table(202) := '2F2A20446563696465206966206120444F4D2060446F63756D656E74467261676D656E74602073686F756C642062652072657475726E65642C20696E7374656164206F6620612068746D6C0A20202020202A20737472696E672020286F72206120547275';
wwv_flow_api.g_varchar2_table(203) := '7374656448544D4C206F626A65637420696620547275737465642054797065732061726520737570706F7274656429202A2F0A202020207661722052455455524E5F444F4D5F465241474D454E54203D2066616C73653B0A0A202020202F2A2049662060';
wwv_flow_api.g_varchar2_table(204) := '52455455524E5F444F4D60206F72206052455455524E5F444F4D5F465241474D454E546020697320656E61626C65642C20646563696465206966207468652072657475726E656420444F4D0A20202020202A20604E6F64656020697320696D706F727465';
wwv_flow_api.g_varchar2_table(205) := '6420696E746F207468652063757272656E742060446F63756D656E74602E204966207468697320666C6167206973206E6F7420656E61626C6564207468650A20202020202A20604E6F6465602077696C6C2062656C6F6E672028697473206F776E657244';
wwv_flow_api.g_varchar2_table(206) := '6F63756D656E742920746F2061206672657368206048544D4C446F63756D656E74602C20637265617465642062790A20202020202A20444F4D5075726966792E0A20202020202A0A20202020202A20546869732064656661756C747320746F2060747275';
wwv_flow_api.g_varchar2_table(207) := '6560207374617274696E6720444F4D50757269667920322E322E302E204E6F746520746861742073657474696E6720697420746F206066616C7365600A20202020202A206D69676874206361757365205853532066726F6D2061747461636B7320686964';
wwv_flow_api.g_varchar2_table(208) := '64656E20696E20636C6F73656420736861646F77726F6F747320696E2063617365207468652062726F777365720A20202020202A20737570706F727473204465636C6172617469766520536861646F773A20444F4D2068747470733A2F2F7765622E6465';
wwv_flow_api.g_varchar2_table(209) := '762F6465636C617261746976652D736861646F772D646F6D2F0A20202020202A2F0A202020207661722052455455524E5F444F4D5F494D504F5254203D20747275653B0A0A202020202F2A2054727920746F2072657475726E2061205472757374656420';
wwv_flow_api.g_varchar2_table(210) := '54797065206F626A65637420696E7374656164206F66206120737472696E672C2072657475726E206120737472696E6720696E0A20202020202A2063617365205472757374656420547970657320617265206E6F7420737570706F7274656420202A2F0A';
wwv_flow_api.g_varchar2_table(211) := '202020207661722052455455524E5F545255535445445F54595045203D2066616C73653B0A0A202020202F2A204F75747075742073686F756C6420626520667265652066726F6D20444F4D20636C6F62626572696E672061747461636B733F202A2F0A20';
wwv_flow_api.g_varchar2_table(212) := '2020207661722053414E4954495A455F444F4D203D20747275653B0A0A202020202F2A204B65657020656C656D656E7420636F6E74656E74207768656E2072656D6F76696E6720656C656D656E743F202A2F0A20202020766172204B4545505F434F4E54';
wwv_flow_api.g_varchar2_table(213) := '454E54203D20747275653B0A0A202020202F2A204966206120604E6F6465602069732070617373656420746F2073616E6974697A6528292C207468656E20706572666F726D732073616E6974697A6174696F6E20696E2D706C61636520696E7374656164';
wwv_flow_api.g_varchar2_table(214) := '0A20202020202A206F6620696D706F7274696E6720697420696E746F2061206E657720446F63756D656E7420616E642072657475726E696E6720612073616E6974697A656420636F7079202A2F0A2020202076617220494E5F504C414345203D2066616C';
wwv_flow_api.g_varchar2_table(215) := '73653B0A0A202020202F2A20416C6C6F77207573616765206F662070726F66696C6573206C696B652068746D6C2C2073766720616E64206D6174684D6C202A2F0A20202020766172205553455F50524F46494C4553203D207B7D3B0A0A202020202F2A20';
wwv_flow_api.g_varchar2_table(216) := '5461677320746F2069676E6F726520636F6E74656E74206F66207768656E204B4545505F434F4E54454E542069732074727565202A2F0A2020202076617220464F524249445F434F4E54454E5453203D20616464546F536574287B7D2C205B27616E6E6F';
wwv_flow_api.g_varchar2_table(217) := '746174696F6E2D786D6C272C2027617564696F272C2027636F6C67726F7570272C202764657363272C2027666F726569676E6F626A656374272C202768656164272C2027696672616D65272C20276D617468272C20276D69272C20276D6E272C20276D6F';
wwv_flow_api.g_varchar2_table(218) := '272C20276D73272C20276D74657874272C20276E6F656D626564272C20276E6F6672616D6573272C20276E6F736372697074272C2027706C61696E74657874272C2027736372697074272C20277374796C65272C2027737667272C202774656D706C6174';
wwv_flow_api.g_varchar2_table(219) := '65272C20277468656164272C20277469746C65272C2027766964656F272C2027786D70275D293B0A0A202020202F2A2054616773207468617420617265207361666520666F7220646174613A2055524973202A2F0A2020202076617220444154415F5552';
wwv_flow_api.g_varchar2_table(220) := '495F54414753203D206E756C6C3B0A202020207661722044454641554C545F444154415F5552495F54414753203D20616464546F536574287B7D2C205B27617564696F272C2027766964656F272C2027696D67272C2027736F75726365272C2027696D61';
wwv_flow_api.g_varchar2_table(221) := '6765272C2027747261636B275D293B0A0A202020202F2A2041747472696275746573207361666520666F722076616C756573206C696B6520226A6176617363726970743A22202A2F0A20202020766172205552495F534146455F41545452494255544553';
wwv_flow_api.g_varchar2_table(222) := '203D206E756C6C3B0A202020207661722044454641554C545F5552495F534146455F41545452494255544553203D20616464546F536574287B7D2C205B27616C74272C2027636C617373272C2027666F72272C20276964272C20276C6162656C272C2027';
wwv_flow_api.g_varchar2_table(223) := '6E616D65272C20277061747465726E272C2027706C616365686F6C646572272C202773756D6D617279272C20277469746C65272C202776616C7565272C20277374796C65272C2027786D6C6E73275D293B0A0A202020202F2A204B656570206120726566';
wwv_flow_api.g_varchar2_table(224) := '6572656E636520746F20636F6E66696720746F207061737320746F20686F6F6B73202A2F0A2020202076617220434F4E464947203D206E756C6C3B0A0A202020202F2A20496465616C6C792C20646F206E6F7420746F75636820616E797468696E672062';
wwv_flow_api.g_varchar2_table(225) := '656C6F772074686973206C696E65202A2F0A202020202F2A205F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F202A2F0A0A2020202076617220666F726D456C656D656E74203D20646F';
wwv_flow_api.g_varchar2_table(226) := '63756D656E742E637265617465456C656D656E742827666F726D27293B0A0A202020202F2A2A0A20202020202A205F7061727365436F6E6669670A20202020202A0A20202020202A2040706172616D20207B4F626A6563747D20636667206F7074696F6E';
wwv_flow_api.g_varchar2_table(227) := '616C20636F6E666967206C69746572616C0A20202020202A2F0A202020202F2F2065736C696E742D64697361626C652D6E6578742D6C696E6520636F6D706C65786974790A20202020766172205F7061727365436F6E666967203D2066756E6374696F6E';
wwv_flow_api.g_varchar2_table(228) := '205F7061727365436F6E6669672863666729207B0A20202020202069662028434F4E46494720262620434F4E464947203D3D3D2063666729207B0A202020202020202072657475726E3B0A2020202020207D0A0A2020202020202F2A20536869656C6420';
wwv_flow_api.g_varchar2_table(229) := '636F6E66696775726174696F6E206F626A6563742066726F6D2074616D706572696E67202A2F0A2020202020206966202821636667207C7C2028747970656F6620636667203D3D3D2027756E646566696E656427203F2027756E646566696E656427203A';
wwv_flow_api.g_varchar2_table(230) := '205F747970656F6628636667292920213D3D20276F626A6563742729207B0A2020202020202020636667203D207B7D3B0A2020202020207D0A0A2020202020202F2A20536869656C6420636F6E66696775726174696F6E206F626A6563742066726F6D20';
wwv_flow_api.g_varchar2_table(231) := '70726F746F7479706520706F6C6C7574696F6E202A2F0A202020202020636667203D20636C6F6E6528636667293B0A0A2020202020202F2A2053657420636F6E66696775726174696F6E20706172616D6574657273202A2F0A202020202020414C4C4F57';
wwv_flow_api.g_varchar2_table(232) := '45445F54414753203D2027414C4C4F5745445F544147532720696E20636667203F20616464546F536574287B7D2C206366672E414C4C4F5745445F5441475329203A2044454641554C545F414C4C4F5745445F544147533B0A202020202020414C4C4F57';
wwv_flow_api.g_varchar2_table(233) := '45445F41545452203D2027414C4C4F5745445F415454522720696E20636667203F20616464546F536574287B7D2C206366672E414C4C4F5745445F4154545229203A2044454641554C545F414C4C4F5745445F415454523B0A2020202020205552495F53';
wwv_flow_api.g_varchar2_table(234) := '4146455F41545452494255544553203D20274144445F5552495F534146455F415454522720696E20636667203F20616464546F53657428636C6F6E652844454641554C545F5552495F534146455F41545452494255544553292C206366672E4144445F55';
wwv_flow_api.g_varchar2_table(235) := '52495F534146455F4154545229203A2044454641554C545F5552495F534146455F415454524942555445533B0A202020202020444154415F5552495F54414753203D20274144445F444154415F5552495F544147532720696E20636667203F2061646454';
wwv_flow_api.g_varchar2_table(236) := '6F53657428636C6F6E652844454641554C545F444154415F5552495F54414753292C206366672E4144445F444154415F5552495F5441475329203A2044454641554C545F444154415F5552495F544147533B0A202020202020464F524249445F54414753';
wwv_flow_api.g_varchar2_table(237) := '203D2027464F524249445F544147532720696E20636667203F20616464546F536574287B7D2C206366672E464F524249445F5441475329203A207B7D3B0A202020202020464F524249445F41545452203D2027464F524249445F415454522720696E2063';
wwv_flow_api.g_varchar2_table(238) := '6667203F20616464546F536574287B7D2C206366672E464F524249445F4154545229203A207B7D3B0A2020202020205553455F50524F46494C4553203D20275553455F50524F46494C45532720696E20636667203F206366672E5553455F50524F46494C';
wwv_flow_api.g_varchar2_table(239) := '4553203A2066616C73653B0A202020202020414C4C4F575F415249415F41545452203D206366672E414C4C4F575F415249415F4154545220213D3D2066616C73653B202F2F2044656661756C7420747275650A202020202020414C4C4F575F444154415F';
wwv_flow_api.g_varchar2_table(240) := '41545452203D206366672E414C4C4F575F444154415F4154545220213D3D2066616C73653B202F2F2044656661756C7420747275650A202020202020414C4C4F575F554E4B4E4F574E5F50524F544F434F4C53203D206366672E414C4C4F575F554E4B4E';
wwv_flow_api.g_varchar2_table(241) := '4F574E5F50524F544F434F4C53207C7C2066616C73653B202F2F2044656661756C742066616C73650A202020202020534146455F464F525F54454D504C41544553203D206366672E534146455F464F525F54454D504C41544553207C7C2066616C73653B';
wwv_flow_api.g_varchar2_table(242) := '202F2F2044656661756C742066616C73650A20202020202057484F4C455F444F43554D454E54203D206366672E57484F4C455F444F43554D454E54207C7C2066616C73653B202F2F2044656661756C742066616C73650A20202020202052455455524E5F';
wwv_flow_api.g_varchar2_table(243) := '444F4D203D206366672E52455455524E5F444F4D207C7C2066616C73653B202F2F2044656661756C742066616C73650A20202020202052455455524E5F444F4D5F465241474D454E54203D206366672E52455455524E5F444F4D5F465241474D454E5420';
wwv_flow_api.g_varchar2_table(244) := '7C7C2066616C73653B202F2F2044656661756C742066616C73650A20202020202052455455524E5F444F4D5F494D504F5254203D206366672E52455455524E5F444F4D5F494D504F525420213D3D2066616C73653B202F2F2044656661756C7420747275';
wwv_flow_api.g_varchar2_table(245) := '650A20202020202052455455524E5F545255535445445F54595045203D206366672E52455455524E5F545255535445445F54595045207C7C2066616C73653B202F2F2044656661756C742066616C73650A202020202020464F5243455F424F4459203D20';
wwv_flow_api.g_varchar2_table(246) := '6366672E464F5243455F424F4459207C7C2066616C73653B202F2F2044656661756C742066616C73650A20202020202053414E4954495A455F444F4D203D206366672E53414E4954495A455F444F4D20213D3D2066616C73653B202F2F2044656661756C';
wwv_flow_api.g_varchar2_table(247) := '7420747275650A2020202020204B4545505F434F4E54454E54203D206366672E4B4545505F434F4E54454E5420213D3D2066616C73653B202F2F2044656661756C7420747275650A202020202020494E5F504C414345203D206366672E494E5F504C4143';
wwv_flow_api.g_varchar2_table(248) := '45207C7C2066616C73653B202F2F2044656661756C742066616C73650A20202020202049535F414C4C4F5745445F555249242431203D206366672E414C4C4F5745445F5552495F524547455850207C7C2049535F414C4C4F5745445F5552492424313B0A';
wwv_flow_api.g_varchar2_table(249) := '20202020202069662028534146455F464F525F54454D504C4154455329207B0A2020202020202020414C4C4F575F444154415F41545452203D2066616C73653B0A2020202020207D0A0A2020202020206966202852455455524E5F444F4D5F465241474D';
wwv_flow_api.g_varchar2_table(250) := '454E5429207B0A202020202020202052455455524E5F444F4D203D20747275653B0A2020202020207D0A0A2020202020202F2A2050617273652070726F66696C6520696E666F202A2F0A202020202020696620285553455F50524F46494C455329207B0A';
wwv_flow_api.g_varchar2_table(251) := '2020202020202020414C4C4F5745445F54414753203D20616464546F536574287B7D2C205B5D2E636F6E636174285F746F436F6E73756D61626C654172726179243128746578742929293B0A2020202020202020414C4C4F5745445F41545452203D205B';
wwv_flow_api.g_varchar2_table(252) := '5D3B0A2020202020202020696620285553455F50524F46494C45532E68746D6C203D3D3D207472756529207B0A20202020202020202020616464546F53657428414C4C4F5745445F544147532C2068746D6C293B0A20202020202020202020616464546F';
wwv_flow_api.g_varchar2_table(253) := '53657428414C4C4F5745445F415454522C2068746D6C2431293B0A20202020202020207D0A0A2020202020202020696620285553455F50524F46494C45532E737667203D3D3D207472756529207B0A20202020202020202020616464546F53657428414C';
wwv_flow_api.g_varchar2_table(254) := '4C4F5745445F544147532C20737667293B0A20202020202020202020616464546F53657428414C4C4F5745445F415454522C207376672431293B0A20202020202020202020616464546F53657428414C4C4F5745445F415454522C20786D6C293B0A2020';
wwv_flow_api.g_varchar2_table(255) := '2020202020207D0A0A2020202020202020696620285553455F50524F46494C45532E73766746696C74657273203D3D3D207472756529207B0A20202020202020202020616464546F53657428414C4C4F5745445F544147532C2073766746696C74657273';
wwv_flow_api.g_varchar2_table(256) := '293B0A20202020202020202020616464546F53657428414C4C4F5745445F415454522C207376672431293B0A20202020202020202020616464546F53657428414C4C4F5745445F415454522C20786D6C293B0A20202020202020207D0A0A202020202020';
wwv_flow_api.g_varchar2_table(257) := '2020696620285553455F50524F46494C45532E6D6174684D6C203D3D3D207472756529207B0A20202020202020202020616464546F53657428414C4C4F5745445F544147532C206D6174684D6C293B0A20202020202020202020616464546F5365742841';
wwv_flow_api.g_varchar2_table(258) := '4C4C4F5745445F415454522C206D6174684D6C2431293B0A20202020202020202020616464546F53657428414C4C4F5745445F415454522C20786D6C293B0A20202020202020207D0A2020202020207D0A0A2020202020202F2A204D6572676520636F6E';
wwv_flow_api.g_varchar2_table(259) := '66696775726174696F6E20706172616D6574657273202A2F0A202020202020696620286366672E4144445F5441475329207B0A202020202020202069662028414C4C4F5745445F54414753203D3D3D2044454641554C545F414C4C4F5745445F54414753';
wwv_flow_api.g_varchar2_table(260) := '29207B0A20202020202020202020414C4C4F5745445F54414753203D20636C6F6E6528414C4C4F5745445F54414753293B0A20202020202020207D0A0A2020202020202020616464546F53657428414C4C4F5745445F544147532C206366672E4144445F';
wwv_flow_api.g_varchar2_table(261) := '54414753293B0A2020202020207D0A0A202020202020696620286366672E4144445F4154545229207B0A202020202020202069662028414C4C4F5745445F41545452203D3D3D2044454641554C545F414C4C4F5745445F4154545229207B0A2020202020';
wwv_flow_api.g_varchar2_table(262) := '2020202020414C4C4F5745445F41545452203D20636C6F6E6528414C4C4F5745445F41545452293B0A20202020202020207D0A0A2020202020202020616464546F53657428414C4C4F5745445F415454522C206366672E4144445F41545452293B0A2020';
wwv_flow_api.g_varchar2_table(263) := '202020207D0A0A202020202020696620286366672E4144445F5552495F534146455F4154545229207B0A2020202020202020616464546F536574285552495F534146455F415454524942555445532C206366672E4144445F5552495F534146455F415454';
wwv_flow_api.g_varchar2_table(264) := '52293B0A2020202020207D0A0A2020202020202F2A2041646420237465787420696E2063617365204B4545505F434F4E54454E542069732073657420746F2074727565202A2F0A202020202020696620284B4545505F434F4E54454E5429207B0A202020';
wwv_flow_api.g_varchar2_table(265) := '2020202020414C4C4F5745445F544147535B272374657874275D203D20747275653B0A2020202020207D0A0A2020202020202F2A204164642068746D6C2C206865616420616E6420626F647920746F20414C4C4F5745445F5441475320696E2063617365';
wwv_flow_api.g_varchar2_table(266) := '2057484F4C455F444F43554D454E542069732074727565202A2F0A2020202020206966202857484F4C455F444F43554D454E5429207B0A2020202020202020616464546F53657428414C4C4F5745445F544147532C205B2768746D6C272C202768656164';
wwv_flow_api.g_varchar2_table(267) := '272C2027626F6479275D293B0A2020202020207D0A0A2020202020202F2A204164642074626F647920746F20414C4C4F5745445F5441475320696E2063617365207461626C657320617265207065726D69747465642C2073656520233238362C20233336';
wwv_flow_api.g_varchar2_table(268) := '35202A2F0A20202020202069662028414C4C4F5745445F544147532E7461626C6529207B0A2020202020202020616464546F53657428414C4C4F5745445F544147532C205B2774626F6479275D293B0A202020202020202064656C65746520464F524249';
wwv_flow_api.g_varchar2_table(269) := '445F544147532E74626F64793B0A2020202020207D0A0A2020202020202F2F2050726576656E742066757274686572206D616E6970756C6174696F6E206F6620636F6E66696775726174696F6E2E0A2020202020202F2F204E6F7420617661696C61626C';
wwv_flow_api.g_varchar2_table(270) := '6520696E204945382C2053616661726920352C206574632E0A20202020202069662028667265657A6529207B0A2020202020202020667265657A6528636667293B0A2020202020207D0A0A202020202020434F4E464947203D206366673B0A202020207D';
wwv_flow_api.g_varchar2_table(271) := '3B0A0A20202020766172204D4154484D4C5F544558545F494E544547524154494F4E5F504F494E5453203D20616464546F536574287B7D2C205B276D69272C20276D6F272C20276D6E272C20276D73272C20276D74657874275D293B0A0A202020207661';
wwv_flow_api.g_varchar2_table(272) := '722048544D4C5F494E544547524154494F4E5F504F494E5453203D20616464546F536574287B7D2C205B27666F726569676E6F626A656374272C202764657363272C20277469746C65272C2027616E6E6F746174696F6E2D786D6C275D293B0A0A202020';
wwv_flow_api.g_varchar2_table(273) := '202F2A204B65657020747261636B206F6620616C6C20706F737369626C652053564720616E64204D6174684D4C20746167730A20202020202A20736F20746861742077652063616E20706572666F726D20746865206E616D65737061636520636865636B';
wwv_flow_api.g_varchar2_table(274) := '730A20202020202A20636F72726563746C792E202A2F0A2020202076617220414C4C5F5356475F54414753203D20616464546F536574287B7D2C20737667293B0A20202020616464546F53657428414C4C5F5356475F544147532C2073766746696C7465';
wwv_flow_api.g_varchar2_table(275) := '7273293B0A20202020616464546F53657428414C4C5F5356475F544147532C20737667446973616C6C6F776564293B0A0A2020202076617220414C4C5F4D4154484D4C5F54414753203D20616464546F536574287B7D2C206D6174684D6C293B0A202020';
wwv_flow_api.g_varchar2_table(276) := '20616464546F53657428414C4C5F4D4154484D4C5F544147532C206D6174684D6C446973616C6C6F776564293B0A0A20202020766172204D4154484D4C5F4E414D455350414345203D2027687474703A2F2F7777772E77332E6F72672F313939382F4D61';
wwv_flow_api.g_varchar2_table(277) := '74682F4D6174684D4C273B0A20202020766172205356475F4E414D455350414345203D2027687474703A2F2F7777772E77332E6F72672F323030302F737667273B0A202020207661722048544D4C5F4E414D455350414345203D2027687474703A2F2F77';
wwv_flow_api.g_varchar2_table(278) := '77772E77332E6F72672F313939392F7868746D6C273B0A0A202020202F2A2A0A20202020202A0A20202020202A0A20202020202A2040706172616D20207B456C656D656E747D20656C656D656E74206120444F4D20656C656D656E742077686F7365206E';
wwv_flow_api.g_varchar2_table(279) := '616D657370616365206973206265696E6720636865636B65640A20202020202A204072657475726E73207B626F6F6C65616E7D2052657475726E2066616C73652069662074686520656C656D656E742068617320610A20202020202A20206E616D657370';
wwv_flow_api.g_varchar2_table(280) := '6163652074686174206120737065632D636F6D706C69616E742070617273657220776F756C64206E657665720A20202020202A202072657475726E2E2052657475726E2074727565206F74686572776973652E0A20202020202A2F0A2020202076617220';
wwv_flow_api.g_varchar2_table(281) := '5F636865636B56616C69644E616D657370616365203D2066756E6374696F6E205F636865636B56616C69644E616D65737061636528656C656D656E7429207B0A20202020202076617220706172656E74203D20676574506172656E744E6F646528656C65';
wwv_flow_api.g_varchar2_table(282) := '6D656E74293B0A0A2020202020202F2F20496E204A53444F4D2C20696620776527726520696E7369646520736861646F7720444F4D2C207468656E20706172656E744E6F64650A2020202020202F2F2063616E206265206E756C6C2E205765206A757374';
wwv_flow_api.g_varchar2_table(283) := '2073696D756C61746520706172656E7420696E207468697320636173652E0A2020202020206966202821706172656E74207C7C2021706172656E742E7461674E616D6529207B0A2020202020202020706172656E74203D207B0A20202020202020202020';
wwv_flow_api.g_varchar2_table(284) := '6E616D6573706163655552493A2048544D4C5F4E414D4553504143452C0A202020202020202020207461674E616D653A202774656D706C617465270A20202020202020207D3B0A2020202020207D0A0A202020202020766172207461674E616D65203D20';
wwv_flow_api.g_varchar2_table(285) := '737472696E67546F4C6F7765724361736528656C656D656E742E7461674E616D65293B0A20202020202076617220706172656E745461674E616D65203D20737472696E67546F4C6F7765724361736528706172656E742E7461674E616D65293B0A0A2020';
wwv_flow_api.g_varchar2_table(286) := '2020202069662028656C656D656E742E6E616D657370616365555249203D3D3D205356475F4E414D45535041434529207B0A20202020202020202F2F20546865206F6E6C792077617920746F207377697463682066726F6D2048544D4C206E616D657370';
wwv_flow_api.g_varchar2_table(287) := '61636520746F205356470A20202020202020202F2F20697320766961203C7376673E2E2049662069742068617070656E732076696120616E79206F74686572207461672C207468656E0A20202020202020202F2F2069742073686F756C64206265206B69';
wwv_flow_api.g_varchar2_table(288) := '6C6C65642E0A202020202020202069662028706172656E742E6E616D657370616365555249203D3D3D2048544D4C5F4E414D45535041434529207B0A2020202020202020202072657475726E207461674E616D65203D3D3D2027737667273B0A20202020';
wwv_flow_api.g_varchar2_table(289) := '202020207D0A0A20202020202020202F2F20546865206F6E6C792077617920746F207377697463682066726F6D204D6174684D4C20746F20535647206973207669610A20202020202020202F2F2073766720696620706172656E74206973206569746865';
wwv_flow_api.g_varchar2_table(290) := '72203C616E6E6F746174696F6E2D786D6C3E206F72204D6174684D4C0A20202020202020202F2F207465787420696E746567726174696F6E20706F696E74732E0A202020202020202069662028706172656E742E6E616D657370616365555249203D3D3D';
wwv_flow_api.g_varchar2_table(291) := '204D4154484D4C5F4E414D45535041434529207B0A2020202020202020202072657475726E207461674E616D65203D3D3D2027737667272026262028706172656E745461674E616D65203D3D3D2027616E6E6F746174696F6E2D786D6C27207C7C204D41';
wwv_flow_api.g_varchar2_table(292) := '54484D4C5F544558545F494E544547524154494F4E5F504F494E54535B706172656E745461674E616D655D293B0A20202020202020207D0A0A20202020202020202F2F205765206F6E6C7920616C6C6F7720656C656D656E747320746861742061726520';
wwv_flow_api.g_varchar2_table(293) := '646566696E656420696E205356470A20202020202020202F2F20737065632E20416C6C206F74686572732061726520646973616C6C6F77656420696E20535647206E616D6573706163652E0A202020202020202072657475726E20426F6F6C65616E2841';
wwv_flow_api.g_varchar2_table(294) := '4C4C5F5356475F544147535B7461674E616D655D293B0A2020202020207D0A0A20202020202069662028656C656D656E742E6E616D657370616365555249203D3D3D204D4154484D4C5F4E414D45535041434529207B0A20202020202020202F2F205468';
wwv_flow_api.g_varchar2_table(295) := '65206F6E6C792077617920746F207377697463682066726F6D2048544D4C206E616D65737061636520746F204D6174684D4C0A20202020202020202F2F20697320766961203C6D6174683E2E2049662069742068617070656E732076696120616E79206F';
wwv_flow_api.g_varchar2_table(296) := '74686572207461672C207468656E0A20202020202020202F2F2069742073686F756C64206265206B696C6C65642E0A202020202020202069662028706172656E742E6E616D657370616365555249203D3D3D2048544D4C5F4E414D45535041434529207B';
wwv_flow_api.g_varchar2_table(297) := '0A2020202020202020202072657475726E207461674E616D65203D3D3D20276D617468273B0A20202020202020207D0A0A20202020202020202F2F20546865206F6E6C792077617920746F207377697463682066726F6D2053564720746F204D6174684D';
wwv_flow_api.g_varchar2_table(298) := '4C206973207669610A20202020202020202F2F203C6D6174683E20616E642048544D4C20696E746567726174696F6E20706F696E74730A202020202020202069662028706172656E742E6E616D657370616365555249203D3D3D205356475F4E414D4553';
wwv_flow_api.g_varchar2_table(299) := '5041434529207B0A2020202020202020202072657475726E207461674E616D65203D3D3D20276D617468272026262048544D4C5F494E544547524154494F4E5F504F494E54535B706172656E745461674E616D655D3B0A20202020202020207D0A0A2020';
wwv_flow_api.g_varchar2_table(300) := '2020202020202F2F205765206F6E6C7920616C6C6F7720656C656D656E747320746861742061726520646566696E656420696E204D6174684D4C0A20202020202020202F2F20737065632E20416C6C206F74686572732061726520646973616C6C6F7765';
wwv_flow_api.g_varchar2_table(301) := '6420696E204D6174684D4C206E616D6573706163652E0A202020202020202072657475726E20426F6F6C65616E28414C4C5F4D4154484D4C5F544147535B7461674E616D655D293B0A2020202020207D0A0A20202020202069662028656C656D656E742E';
wwv_flow_api.g_varchar2_table(302) := '6E616D657370616365555249203D3D3D2048544D4C5F4E414D45535041434529207B0A20202020202020202F2F20546865206F6E6C792077617920746F207377697463682066726F6D2053564720746F2048544D4C206973207669610A20202020202020';
wwv_flow_api.g_varchar2_table(303) := '202F2F2048544D4C20696E746567726174696F6E20706F696E74732C20616E642066726F6D204D6174684D4C20746F2048544D4C0A20202020202020202F2F20697320766961204D6174684D4C207465787420696E746567726174696F6E20706F696E74';
wwv_flow_api.g_varchar2_table(304) := '730A202020202020202069662028706172656E742E6E616D657370616365555249203D3D3D205356475F4E414D455350414345202626202148544D4C5F494E544547524154494F4E5F504F494E54535B706172656E745461674E616D655D29207B0A2020';
wwv_flow_api.g_varchar2_table(305) := '202020202020202072657475726E2066616C73653B0A20202020202020207D0A0A202020202020202069662028706172656E742E6E616D657370616365555249203D3D3D204D4154484D4C5F4E414D45535041434520262620214D4154484D4C5F544558';
wwv_flow_api.g_varchar2_table(306) := '545F494E544547524154494F4E5F504F494E54535B706172656E745461674E616D655D29207B0A2020202020202020202072657475726E2066616C73653B0A20202020202020207D0A0A20202020202020202F2F204365727461696E20656C656D656E74';
wwv_flow_api.g_varchar2_table(307) := '732061726520616C6C6F77656420696E20626F74682053564720616E642048544D4C0A20202020202020202F2F206E616D6573706163652E205765206E65656420746F2073706563696679207468656D206578706C696369746C790A2020202020202020';
wwv_flow_api.g_varchar2_table(308) := '2F2F20736F2074686174207468657920646F6E277420676574206572726F6E6F75736C792064656C657465642066726F6D0A20202020202020202F2F2048544D4C206E616D6573706163652E0A202020202020202076617220636F6D6D6F6E537667416E';
wwv_flow_api.g_varchar2_table(309) := '6448544D4C456C656D656E7473203D20616464546F536574287B7D2C205B277469746C65272C20277374796C65272C2027666F6E74272C202761272C2027736372697074275D293B0A0A20202020202020202F2F20576520646973616C6C6F7720746167';
wwv_flow_api.g_varchar2_table(310) := '7320746861742061726520737065636966696320666F72204D6174684D4C0A20202020202020202F2F206F722053564720616E642073686F756C64206E657665722061707065617220696E2048544D4C206E616D6573706163650A202020202020202072';
wwv_flow_api.g_varchar2_table(311) := '657475726E2021414C4C5F4D4154484D4C5F544147535B7461674E616D655D2026262028636F6D6D6F6E537667416E6448544D4C456C656D656E74735B7461674E616D655D207C7C2021414C4C5F5356475F544147535B7461674E616D655D293B0A2020';
wwv_flow_api.g_varchar2_table(312) := '202020207D0A0A2020202020202F2F2054686520636F64652073686F756C64206E65766572207265616368207468697320706C616365202874686973206D65616E730A2020202020202F2F20746861742074686520656C656D656E7420736F6D65686F77';
wwv_flow_api.g_varchar2_table(313) := '20676F74206E616D6573706163652074686174206973206E6F740A2020202020202F2F2048544D4C2C20535647206F72204D6174684D4C292E2052657475726E2066616C7365206A75737420696E20636173652E0A20202020202072657475726E206661';
wwv_flow_api.g_varchar2_table(314) := '6C73653B0A202020207D3B0A0A202020202F2A2A0A20202020202A205F666F72636552656D6F76650A20202020202A0A20202020202A2040706172616D20207B4E6F64657D206E6F6465206120444F4D206E6F64650A20202020202A2F0A202020207661';
wwv_flow_api.g_varchar2_table(315) := '72205F666F72636552656D6F7665203D2066756E6374696F6E205F666F72636552656D6F7665286E6F646529207B0A20202020202061727261795075736828444F4D5075726966792E72656D6F7665642C207B20656C656D656E743A206E6F6465207D29';
wwv_flow_api.g_varchar2_table(316) := '3B0A202020202020747279207B0A20202020202020206E6F64652E706172656E744E6F64652E72656D6F76654368696C64286E6F6465293B0A2020202020207D20636174636820285F29207B0A2020202020202020747279207B0A202020202020202020';
wwv_flow_api.g_varchar2_table(317) := '206E6F64652E6F7574657248544D4C203D20656D70747948544D4C3B0A20202020202020207D20636174636820285F29207B0A202020202020202020206E6F64652E72656D6F766528293B0A20202020202020207D0A2020202020207D0A202020207D3B';
wwv_flow_api.g_varchar2_table(318) := '0A0A202020202F2A2A0A20202020202A205F72656D6F76654174747269627574650A20202020202A0A20202020202A2040706172616D20207B537472696E677D206E616D6520616E20417474726962757465206E616D650A20202020202A204070617261';
wwv_flow_api.g_varchar2_table(319) := '6D20207B4E6F64657D206E6F6465206120444F4D206E6F64650A20202020202A2F0A20202020766172205F72656D6F7665417474726962757465203D2066756E6374696F6E205F72656D6F7665417474726962757465286E616D652C206E6F646529207B';
wwv_flow_api.g_varchar2_table(320) := '0A202020202020747279207B0A202020202020202061727261795075736828444F4D5075726966792E72656D6F7665642C207B0A202020202020202020206174747269627574653A206E6F64652E6765744174747269627574654E6F6465286E616D6529';
wwv_flow_api.g_varchar2_table(321) := '2C0A2020202020202020202066726F6D3A206E6F64650A20202020202020207D293B0A2020202020207D20636174636820285F29207B0A202020202020202061727261795075736828444F4D5075726966792E72656D6F7665642C207B0A202020202020';
wwv_flow_api.g_varchar2_table(322) := '202020206174747269627574653A206E756C6C2C0A2020202020202020202066726F6D3A206E6F64650A20202020202020207D293B0A2020202020207D0A0A2020202020206E6F64652E72656D6F7665417474726962757465286E616D65293B0A202020';
wwv_flow_api.g_varchar2_table(323) := '207D3B0A0A202020202F2A2A0A20202020202A205F696E6974446F63756D656E740A20202020202A0A20202020202A2040706172616D20207B537472696E677D206469727479206120737472696E67206F66206469727479206D61726B75700A20202020';
wwv_flow_api.g_varchar2_table(324) := '202A204072657475726E207B446F63756D656E747D206120444F4D2C2066696C6C6564207769746820746865206469727479206D61726B75700A20202020202A2F0A20202020766172205F696E6974446F63756D656E74203D2066756E6374696F6E205F';
wwv_flow_api.g_varchar2_table(325) := '696E6974446F63756D656E7428646972747929207B0A2020202020202F2A2043726561746520612048544D4C20646F63756D656E74202A2F0A20202020202076617220646F63203D20766F696420303B0A202020202020766172206C656164696E675768';
wwv_flow_api.g_varchar2_table(326) := '6974657370616365203D20766F696420303B0A0A20202020202069662028464F5243455F424F445929207B0A20202020202020206469727479203D20273C72656D6F76653E3C2F72656D6F76653E27202B2064697274793B0A2020202020207D20656C73';
wwv_flow_api.g_varchar2_table(327) := '65207B0A20202020202020202F2A20496620464F5243455F424F44592069736E277420757365642C206C656164696E672077686974657370616365206E6565647320746F20626520707265736572766564206D616E75616C6C79202A2F0A202020202020';
wwv_flow_api.g_varchar2_table(328) := '2020766172206D617463686573203D20737472696E674D617463682864697274792C202F5E5B5C725C6E5C74205D2B2F293B0A20202020202020206C656164696E6757686974657370616365203D206D617463686573202626206D6174636865735B305D';
wwv_flow_api.g_varchar2_table(329) := '3B0A2020202020207D0A0A2020202020207661722064697274795061796C6F6164203D20747275737465645479706573506F6C696379203F20747275737465645479706573506F6C6963792E63726561746548544D4C28646972747929203A2064697274';
wwv_flow_api.g_varchar2_table(330) := '793B0A2020202020202F2A205573652074686520444F4D506172736572204150492062792064656661756C742C2066616C6C6261636B206C61746572206966206E65656473206265202A2F0A202020202020747279207B0A2020202020202020646F6320';
wwv_flow_api.g_varchar2_table(331) := '3D206E657720444F4D50617273657228292E706172736546726F6D537472696E672864697274795061796C6F61642C2027746578742F68746D6C27293B0A2020202020207D20636174636820285F29207B7D0A0A2020202020202F2A2055736520637265';
wwv_flow_api.g_varchar2_table(332) := '61746548544D4C446F63756D656E7420696E206361736520444F4D506172736572206973206E6F7420617661696C61626C65202A2F0A2020202020206966202821646F63207C7C2021646F632E646F63756D656E74456C656D656E7429207B0A20202020';
wwv_flow_api.g_varchar2_table(333) := '20202020646F63203D20696D706C656D656E746174696F6E2E63726561746548544D4C446F63756D656E74282727293B0A2020202020202020766172205F646F63203D20646F632C0A202020202020202020202020626F6479203D205F646F632E626F64';
wwv_flow_api.g_varchar2_table(334) := '793B0A0A2020202020202020626F64792E706172656E744E6F64652E72656D6F76654368696C6428626F64792E706172656E744E6F64652E6669727374456C656D656E744368696C64293B0A2020202020202020626F64792E6F7574657248544D4C203D';
wwv_flow_api.g_varchar2_table(335) := '2064697274795061796C6F61643B0A2020202020207D0A0A202020202020696620286469727479202626206C656164696E675768697465737061636529207B0A2020202020202020646F632E626F64792E696E736572744265666F726528646F63756D65';
wwv_flow_api.g_varchar2_table(336) := '6E742E637265617465546578744E6F6465286C656164696E6757686974657370616365292C20646F632E626F64792E6368696C644E6F6465735B305D207C7C206E756C6C293B0A2020202020207D0A0A2020202020202F2A20576F726B206F6E2077686F';
wwv_flow_api.g_varchar2_table(337) := '6C6520646F63756D656E74206F72206A7573742069747320626F6479202A2F0A20202020202072657475726E20676574456C656D656E747342795461674E616D652E63616C6C28646F632C2057484F4C455F444F43554D454E54203F202768746D6C2720';
wwv_flow_api.g_varchar2_table(338) := '3A2027626F647927295B305D3B0A202020207D3B0A0A202020202F2A2A0A20202020202A205F6372656174654974657261746F720A20202020202A0A20202020202A2040706172616D20207B446F63756D656E747D20726F6F7420646F63756D656E742F';
wwv_flow_api.g_varchar2_table(339) := '667261676D656E7420746F20637265617465206974657261746F7220666F720A20202020202A204072657475726E207B4974657261746F727D206974657261746F7220696E7374616E63650A20202020202A2F0A20202020766172205F63726561746549';
wwv_flow_api.g_varchar2_table(340) := '74657261746F72203D2066756E6374696F6E205F6372656174654974657261746F7228726F6F7429207B0A20202020202072657475726E206372656174654E6F64654974657261746F722E63616C6C28726F6F742E6F776E6572446F63756D656E74207C';
wwv_flow_api.g_varchar2_table(341) := '7C20726F6F742C20726F6F742C204E6F646546696C7465722E53484F575F454C454D454E54207C204E6F646546696C7465722E53484F575F434F4D4D454E54207C204E6F646546696C7465722E53484F575F544558542C2066756E6374696F6E20282920';
wwv_flow_api.g_varchar2_table(342) := '7B0A202020202020202072657475726E204E6F646546696C7465722E46494C5445525F4143434550543B0A2020202020207D2C2066616C7365293B0A202020207D3B0A0A202020202F2A2A0A20202020202A205F6973436C6F6262657265640A20202020';
wwv_flow_api.g_varchar2_table(343) := '202A0A20202020202A2040706172616D20207B4E6F64657D20656C6D20656C656D656E7420746F20636865636B20666F7220636C6F62626572696E672061747461636B730A20202020202A204072657475726E207B426F6F6C65616E7D20747275652069';
wwv_flow_api.g_varchar2_table(344) := '6620636C6F6262657265642C2066616C736520696620736166650A20202020202A2F0A20202020766172205F6973436C6F626265726564203D2066756E6374696F6E205F6973436C6F62626572656428656C6D29207B0A20202020202069662028656C6D';
wwv_flow_api.g_varchar2_table(345) := '20696E7374616E63656F662054657874207C7C20656C6D20696E7374616E63656F6620436F6D6D656E7429207B0A202020202020202072657475726E2066616C73653B0A2020202020207D0A0A20202020202069662028747970656F6620656C6D2E6E6F';
wwv_flow_api.g_varchar2_table(346) := '64654E616D6520213D3D2027737472696E6727207C7C20747970656F6620656C6D2E74657874436F6E74656E7420213D3D2027737472696E6727207C7C20747970656F6620656C6D2E72656D6F76654368696C6420213D3D202766756E6374696F6E2720';
wwv_flow_api.g_varchar2_table(347) := '7C7C202128656C6D2E6174747269627574657320696E7374616E63656F66204E616D65644E6F64654D617029207C7C20747970656F6620656C6D2E72656D6F766541747472696275746520213D3D202766756E6374696F6E27207C7C20747970656F6620';
wwv_flow_api.g_varchar2_table(348) := '656C6D2E73657441747472696275746520213D3D202766756E6374696F6E27207C7C20747970656F6620656C6D2E6E616D65737061636555524920213D3D2027737472696E6727207C7C20747970656F6620656C6D2E696E736572744265666F72652021';
wwv_flow_api.g_varchar2_table(349) := '3D3D202766756E6374696F6E2729207B0A202020202020202072657475726E20747275653B0A2020202020207D0A0A20202020202072657475726E2066616C73653B0A202020207D3B0A0A202020202F2A2A0A20202020202A205F69734E6F64650A2020';
wwv_flow_api.g_varchar2_table(350) := '2020202A0A20202020202A2040706172616D20207B4E6F64657D206F626A206F626A65637420746F20636865636B20776865746865722069742773206120444F4D206E6F64650A20202020202A204072657475726E207B426F6F6C65616E7D2074727565';
wwv_flow_api.g_varchar2_table(351) := '206973206F626A656374206973206120444F4D206E6F64650A20202020202A2F0A20202020766172205F69734E6F6465203D2066756E6374696F6E205F69734E6F6465286F626A65637429207B0A20202020202072657475726E2028747970656F66204E';
wwv_flow_api.g_varchar2_table(352) := '6F6465203D3D3D2027756E646566696E656427203F2027756E646566696E656427203A205F747970656F66284E6F64652929203D3D3D20276F626A65637427203F206F626A65637420696E7374616E63656F66204E6F6465203A206F626A656374202626';
wwv_flow_api.g_varchar2_table(353) := '2028747970656F66206F626A656374203D3D3D2027756E646566696E656427203F2027756E646566696E656427203A205F747970656F66286F626A6563742929203D3D3D20276F626A6563742720262620747970656F66206F626A6563742E6E6F646554';
wwv_flow_api.g_varchar2_table(354) := '797065203D3D3D20276E756D6265722720262620747970656F66206F626A6563742E6E6F64654E616D65203D3D3D2027737472696E67273B0A202020207D3B0A0A202020202F2A2A0A20202020202A205F65786563757465486F6F6B0A20202020202A20';
wwv_flow_api.g_varchar2_table(355) := '45786563757465207573657220636F6E666967757261626C6520686F6F6B730A20202020202A0A20202020202A2040706172616D20207B537472696E677D20656E747279506F696E7420204E616D65206F662074686520686F6F6B277320656E74727920';
wwv_flow_api.g_varchar2_table(356) := '706F696E740A20202020202A2040706172616D20207B4E6F64657D2063757272656E744E6F6465206E6F646520746F20776F726B206F6E20776974682074686520686F6F6B0A20202020202A2040706172616D20207B4F626A6563747D20646174612061';
wwv_flow_api.g_varchar2_table(357) := '64646974696F6E616C20686F6F6B20706172616D65746572730A20202020202A2F0A20202020766172205F65786563757465486F6F6B203D2066756E6374696F6E205F65786563757465486F6F6B28656E747279506F696E742C2063757272656E744E6F';
wwv_flow_api.g_varchar2_table(358) := '64652C206461746129207B0A2020202020206966202821686F6F6B735B656E747279506F696E745D29207B0A202020202020202072657475726E3B0A2020202020207D0A0A2020202020206172726179466F724561636828686F6F6B735B656E74727950';
wwv_flow_api.g_varchar2_table(359) := '6F696E745D2C2066756E6374696F6E2028686F6F6B29207B0A2020202020202020686F6F6B2E63616C6C28444F4D5075726966792C2063757272656E744E6F64652C20646174612C20434F4E464947293B0A2020202020207D293B0A202020207D3B0A0A';
wwv_flow_api.g_varchar2_table(360) := '202020202F2A2A0A20202020202A205F73616E6974697A65456C656D656E74730A20202020202A0A20202020202A204070726F74656374206E6F64654E616D650A20202020202A204070726F746563742074657874436F6E74656E740A20202020202A20';
wwv_flow_api.g_varchar2_table(361) := '4070726F746563742072656D6F76654368696C640A20202020202A0A20202020202A2040706172616D2020207B4E6F64657D2063757272656E744E6F646520746F20636865636B20666F72207065726D697373696F6E20746F2065786973740A20202020';
wwv_flow_api.g_varchar2_table(362) := '202A204072657475726E20207B426F6F6C65616E7D2074727565206966206E6F646520776173206B696C6C65642C2066616C7365206966206C65667420616C6976650A20202020202A2F0A20202020766172205F73616E6974697A65456C656D656E7473';
wwv_flow_api.g_varchar2_table(363) := '203D2066756E6374696F6E205F73616E6974697A65456C656D656E74732863757272656E744E6F646529207B0A20202020202076617220636F6E74656E74203D20766F696420303B0A0A2020202020202F2A2045786563757465206120686F6F6B206966';
wwv_flow_api.g_varchar2_table(364) := '2070726573656E74202A2F0A2020202020205F65786563757465486F6F6B28276265666F726553616E6974697A65456C656D656E7473272C2063757272656E744E6F64652C206E756C6C293B0A0A2020202020202F2A20436865636B20696620656C656D';
wwv_flow_api.g_varchar2_table(365) := '656E7420697320636C6F626265726564206F722063616E20636C6F62626572202A2F0A202020202020696620285F6973436C6F6262657265642863757272656E744E6F64652929207B0A20202020202020205F666F72636552656D6F7665286375727265';
wwv_flow_api.g_varchar2_table(366) := '6E744E6F6465293B0A202020202020202072657475726E20747275653B0A2020202020207D0A0A2020202020202F2A20436865636B206966207461676E616D6520636F6E7461696E7320556E69636F6465202A2F0A20202020202069662028737472696E';
wwv_flow_api.g_varchar2_table(367) := '674D617463682863757272656E744E6F64652E6E6F64654E616D652C202F5B5C75303038302D5C75464646465D2F2929207B0A20202020202020205F666F72636552656D6F76652863757272656E744E6F6465293B0A202020202020202072657475726E';
wwv_flow_api.g_varchar2_table(368) := '20747275653B0A2020202020207D0A0A2020202020202F2A204E6F77206C6574277320636865636B2074686520656C656D656E742773207479706520616E64206E616D65202A2F0A202020202020766172207461674E616D65203D20737472696E67546F';
wwv_flow_api.g_varchar2_table(369) := '4C6F776572436173652863757272656E744E6F64652E6E6F64654E616D65293B0A0A2020202020202F2A2045786563757465206120686F6F6B2069662070726573656E74202A2F0A2020202020205F65786563757465486F6F6B282775706F6E53616E69';
wwv_flow_api.g_varchar2_table(370) := '74697A65456C656D656E74272C2063757272656E744E6F64652C207B0A20202020202020207461674E616D653A207461674E616D652C0A2020202020202020616C6C6F776564546167733A20414C4C4F5745445F544147530A2020202020207D293B0A0A';
wwv_flow_api.g_varchar2_table(371) := '2020202020202F2A20446574656374206D58535320617474656D7074732061627573696E67206E616D65737061636520636F6E667573696F6E202A2F0A20202020202069662028215F69734E6F64652863757272656E744E6F64652E6669727374456C65';
wwv_flow_api.g_varchar2_table(372) := '6D656E744368696C64292026262028215F69734E6F64652863757272656E744E6F64652E636F6E74656E7429207C7C20215F69734E6F64652863757272656E744E6F64652E636F6E74656E742E6669727374456C656D656E744368696C64292920262620';
wwv_flow_api.g_varchar2_table(373) := '72656745787054657374282F3C5B2F5C775D2F672C2063757272656E744E6F64652E696E6E657248544D4C292026262072656745787054657374282F3C5B2F5C775D2F672C2063757272656E744E6F64652E74657874436F6E74656E742929207B0A2020';
wwv_flow_api.g_varchar2_table(374) := '2020202020205F666F72636552656D6F76652863757272656E744E6F6465293B0A202020202020202072657475726E20747275653B0A2020202020207D0A0A2020202020202F2A2052656D6F766520656C656D656E7420696620616E797468696E672066';
wwv_flow_api.g_varchar2_table(375) := '6F7262696473206974732070726573656E6365202A2F0A2020202020206966202821414C4C4F5745445F544147535B7461674E616D655D207C7C20464F524249445F544147535B7461674E616D655D29207B0A20202020202020202F2A204B6565702063';
wwv_flow_api.g_varchar2_table(376) := '6F6E74656E742065786365707420666F72206261642D6C697374656420656C656D656E7473202A2F0A2020202020202020696620284B4545505F434F4E54454E542026262021464F524249445F434F4E54454E54535B7461674E616D655D29207B0A2020';
wwv_flow_api.g_varchar2_table(377) := '202020202020202076617220706172656E744E6F6465203D20676574506172656E744E6F64652863757272656E744E6F6465293B0A20202020202020202020766172206368696C644E6F646573203D206765744368696C644E6F6465732863757272656E';
wwv_flow_api.g_varchar2_table(378) := '744E6F6465293B0A20202020202020202020766172206368696C64436F756E74203D206368696C644E6F6465732E6C656E6774683B0A20202020202020202020666F7220287661722069203D206368696C64436F756E74202D20313B2069203E3D20303B';
wwv_flow_api.g_varchar2_table(379) := '202D2D6929207B0A202020202020202020202020706172656E744E6F64652E696E736572744265666F726528636C6F6E654E6F6465286368696C644E6F6465735B695D2C2074727565292C206765744E6578745369626C696E672863757272656E744E6F';
wwv_flow_api.g_varchar2_table(380) := '646529293B0A202020202020202020207D0A20202020202020207D0A0A20202020202020205F666F72636552656D6F76652863757272656E744E6F6465293B0A202020202020202072657475726E20747275653B0A2020202020207D0A0A202020202020';
wwv_flow_api.g_varchar2_table(381) := '2F2A20436865636B207768657468657220656C656D656E742068617320612076616C6964206E616D657370616365202A2F0A2020202020206966202863757272656E744E6F646520696E7374616E63656F6620456C656D656E7420262620215F63686563';
wwv_flow_api.g_varchar2_table(382) := '6B56616C69644E616D6573706163652863757272656E744E6F64652929207B0A20202020202020205F666F72636552656D6F76652863757272656E744E6F6465293B0A202020202020202072657475726E20747275653B0A2020202020207D0A0A202020';
wwv_flow_api.g_varchar2_table(383) := '20202069662028287461674E616D65203D3D3D20276E6F73637269707427207C7C207461674E616D65203D3D3D20276E6F656D62656427292026262072656745787054657374282F3C5C2F6E6F287363726970747C656D626564292F692C206375727265';
wwv_flow_api.g_varchar2_table(384) := '6E744E6F64652E696E6E657248544D4C2929207B0A20202020202020205F666F72636552656D6F76652863757272656E744E6F6465293B0A202020202020202072657475726E20747275653B0A2020202020207D0A0A2020202020202F2A2053616E6974';
wwv_flow_api.g_varchar2_table(385) := '697A6520656C656D656E7420636F6E74656E7420746F2062652074656D706C6174652D73616665202A2F0A20202020202069662028534146455F464F525F54454D504C415445532026262063757272656E744E6F64652E6E6F646554797065203D3D3D20';
wwv_flow_api.g_varchar2_table(386) := '3329207B0A20202020202020202F2A204765742074686520656C656D656E742773207465787420636F6E74656E74202A2F0A2020202020202020636F6E74656E74203D2063757272656E744E6F64652E74657874436F6E74656E743B0A20202020202020';
wwv_flow_api.g_varchar2_table(387) := '20636F6E74656E74203D20737472696E675265706C61636528636F6E74656E742C204D555354414348455F455850522424312C20272027293B0A2020202020202020636F6E74656E74203D20737472696E675265706C61636528636F6E74656E742C2045';
wwv_flow_api.g_varchar2_table(388) := '52425F455850522424312C20272027293B0A20202020202020206966202863757272656E744E6F64652E74657874436F6E74656E7420213D3D20636F6E74656E7429207B0A2020202020202020202061727261795075736828444F4D5075726966792E72';
wwv_flow_api.g_varchar2_table(389) := '656D6F7665642C207B20656C656D656E743A2063757272656E744E6F64652E636C6F6E654E6F64652829207D293B0A2020202020202020202063757272656E744E6F64652E74657874436F6E74656E74203D20636F6E74656E743B0A2020202020202020';
wwv_flow_api.g_varchar2_table(390) := '7D0A2020202020207D0A0A2020202020202F2A2045786563757465206120686F6F6B2069662070726573656E74202A2F0A2020202020205F65786563757465486F6F6B2827616674657253616E6974697A65456C656D656E7473272C2063757272656E74';
wwv_flow_api.g_varchar2_table(391) := '4E6F64652C206E756C6C293B0A0A20202020202072657475726E2066616C73653B0A202020207D3B0A0A202020202F2A2A0A20202020202A205F697356616C69644174747269627574650A20202020202A0A20202020202A2040706172616D20207B7374';
wwv_flow_api.g_varchar2_table(392) := '72696E677D206C63546167204C6F7765726361736520746167206E616D65206F6620636F6E7461696E696E6720656C656D656E742E0A20202020202A2040706172616D20207B737472696E677D206C634E616D65204C6F77657263617365206174747269';
wwv_flow_api.g_varchar2_table(393) := '62757465206E616D652E0A20202020202A2040706172616D20207B737472696E677D2076616C7565204174747269627574652076616C75652E0A20202020202A204072657475726E207B426F6F6C65616E7D2052657475726E7320747275652069662060';
wwv_flow_api.g_varchar2_table(394) := '76616C7565602069732076616C69642C206F74686572776973652066616C73652E0A20202020202A2F0A202020202F2F2065736C696E742D64697361626C652D6E6578742D6C696E6520636F6D706C65786974790A20202020766172205F697356616C69';
wwv_flow_api.g_varchar2_table(395) := '64417474726962757465203D2066756E6374696F6E205F697356616C6964417474726962757465286C635461672C206C634E616D652C2076616C756529207B0A2020202020202F2A204D616B652073757265206174747269627574652063616E6E6F7420';
wwv_flow_api.g_varchar2_table(396) := '636C6F62626572202A2F0A2020202020206966202853414E4954495A455F444F4D20262620286C634E616D65203D3D3D2027696427207C7C206C634E616D65203D3D3D20276E616D652729202626202876616C756520696E20646F63756D656E74207C7C';
wwv_flow_api.g_varchar2_table(397) := '2076616C756520696E20666F726D456C656D656E742929207B0A202020202020202072657475726E2066616C73653B0A2020202020207D0A0A2020202020202F2A20416C6C6F772076616C696420646174612D2A20617474726962757465733A20417420';
wwv_flow_api.g_varchar2_table(398) := '6C65617374206F6E652063686172616374657220616674657220222D220A202020202020202020202868747470733A2F2F68746D6C2E737065632E7768617477672E6F72672F6D756C7469706167652F646F6D2E68746D6C23656D62656464696E672D63';
wwv_flow_api.g_varchar2_table(399) := '7573746F6D2D6E6F6E2D76697369626C652D646174612D776974682D7468652D646174612D2A2D61747472696275746573290A20202020202020202020584D4C2D636F6D70617469626C65202868747470733A2F2F68746D6C2E737065632E7768617477';
wwv_flow_api.g_varchar2_table(400) := '672E6F72672F6D756C7469706167652F696E6672617374727563747572652E68746D6C23786D6C2D636F6D70617469626C6520616E6420687474703A2F2F7777772E77332E6F72672F54522F786D6C2F23643065383034290A2020202020202020202057';
wwv_flow_api.g_varchar2_table(401) := '6520646F6E2774206E65656420746F20636865636B207468652076616C75653B206974277320616C776179732055524920736166652E202A2F0A20202020202069662028414C4C4F575F444154415F415454522026262072656745787054657374284441';
wwv_flow_api.g_varchar2_table(402) := '54415F415454522424312C206C634E616D652929203B20656C73652069662028414C4C4F575F415249415F41545452202626207265674578705465737428415249415F415454522424312C206C634E616D652929203B20656C7365206966202821414C4C';
wwv_flow_api.g_varchar2_table(403) := '4F5745445F415454525B6C634E616D655D207C7C20464F524249445F415454525B6C634E616D655D29207B0A202020202020202072657475726E2066616C73653B0A0A20202020202020202F2A20436865636B2076616C756520697320736166652E2046';
wwv_flow_api.g_varchar2_table(404) := '697273742C206973206174747220696E6572743F20496620736F2C2069732073616665202A2F0A2020202020207D20656C736520696620285552495F534146455F415454524942555445535B6C634E616D655D29203B20656C7365206966202872656745';
wwv_flow_api.g_varchar2_table(405) := '7870546573742849535F414C4C4F5745445F5552492424312C20737472696E675265706C6163652876616C75652C20415454525F574849544553504143452424312C202727292929203B20656C73652069662028286C634E616D65203D3D3D2027737263';
wwv_flow_api.g_varchar2_table(406) := '27207C7C206C634E616D65203D3D3D2027786C696E6B3A6872656627207C7C206C634E616D65203D3D3D2027687265662729202626206C6354616720213D3D20277363726970742720262620737472696E67496E6465784F662876616C75652C20276461';
wwv_flow_api.g_varchar2_table(407) := '74613A2729203D3D3D203020262620444154415F5552495F544147535B6C635461675D29203B20656C73652069662028414C4C4F575F554E4B4E4F574E5F50524F544F434F4C532026262021726567457870546573742849535F5343524950545F4F525F';
wwv_flow_api.g_varchar2_table(408) := '444154412424312C20737472696E675265706C6163652876616C75652C20415454525F574849544553504143452424312C202727292929203B20656C736520696620282176616C756529203B20656C7365207B0A202020202020202072657475726E2066';
wwv_flow_api.g_varchar2_table(409) := '616C73653B0A2020202020207D0A0A20202020202072657475726E20747275653B0A202020207D3B0A0A202020202F2A2A0A20202020202A205F73616E6974697A65417474726962757465730A20202020202A0A20202020202A204070726F7465637420';
wwv_flow_api.g_varchar2_table(410) := '617474726962757465730A20202020202A204070726F74656374206E6F64654E616D650A20202020202A204070726F746563742072656D6F76654174747269627574650A20202020202A204070726F74656374207365744174747269627574650A202020';
wwv_flow_api.g_varchar2_table(411) := '20202A0A20202020202A2040706172616D20207B4E6F64657D2063757272656E744E6F646520746F2073616E6974697A650A20202020202A2F0A20202020766172205F73616E6974697A6541747472696275746573203D2066756E6374696F6E205F7361';
wwv_flow_api.g_varchar2_table(412) := '6E6974697A65417474726962757465732863757272656E744E6F646529207B0A2020202020207661722061747472203D20766F696420303B0A2020202020207661722076616C7565203D20766F696420303B0A202020202020766172206C634E616D6520';
wwv_flow_api.g_varchar2_table(413) := '3D20766F696420303B0A202020202020766172206C203D20766F696420303B0A2020202020202F2A2045786563757465206120686F6F6B2069662070726573656E74202A2F0A2020202020205F65786563757465486F6F6B28276265666F726553616E69';
wwv_flow_api.g_varchar2_table(414) := '74697A6541747472696275746573272C2063757272656E744E6F64652C206E756C6C293B0A0A2020202020207661722061747472696275746573203D2063757272656E744E6F64652E617474726962757465733B0A0A2020202020202F2A20436865636B';
wwv_flow_api.g_varchar2_table(415) := '206966207765206861766520617474726962757465733B206966206E6F74207765206D69676874206861766520612074657874206E6F6465202A2F0A0A20202020202069662028216174747269627574657329207B0A202020202020202072657475726E';
wwv_flow_api.g_varchar2_table(416) := '3B0A2020202020207D0A0A20202020202076617220686F6F6B4576656E74203D207B0A2020202020202020617474724E616D653A2027272C0A20202020202020206174747256616C75653A2027272C0A20202020202020206B656570417474723A207472';
wwv_flow_api.g_varchar2_table(417) := '75652C0A2020202020202020616C6C6F776564417474726962757465733A20414C4C4F5745445F415454520A2020202020207D3B0A2020202020206C203D20617474726962757465732E6C656E6774683B0A0A2020202020202F2A20476F206261636B77';
wwv_flow_api.g_varchar2_table(418) := '61726473206F76657220616C6C20617474726962757465733B20736166656C792072656D6F766520626164206F6E6573202A2F0A2020202020207768696C6520286C2D2D29207B0A202020202020202061747472203D20617474726962757465735B6C5D';
wwv_flow_api.g_varchar2_table(419) := '3B0A2020202020202020766172205F61747472203D20617474722C0A2020202020202020202020206E616D65203D205F617474722E6E616D652C0A2020202020202020202020206E616D657370616365555249203D205F617474722E6E616D6573706163';
wwv_flow_api.g_varchar2_table(420) := '655552493B0A0A202020202020202076616C7565203D20737472696E675472696D28617474722E76616C7565293B0A20202020202020206C634E616D65203D20737472696E67546F4C6F77657243617365286E616D65293B0A0A20202020202020202F2A';
wwv_flow_api.g_varchar2_table(421) := '2045786563757465206120686F6F6B2069662070726573656E74202A2F0A2020202020202020686F6F6B4576656E742E617474724E616D65203D206C634E616D653B0A2020202020202020686F6F6B4576656E742E6174747256616C7565203D2076616C';
wwv_flow_api.g_varchar2_table(422) := '75653B0A2020202020202020686F6F6B4576656E742E6B65657041747472203D20747275653B0A2020202020202020686F6F6B4576656E742E666F7263654B65657041747472203D20756E646566696E65643B202F2F20416C6C6F777320646576656C6F';
wwv_flow_api.g_varchar2_table(423) := '7065727320746F20736565207468697320697320612070726F706572747920746865792063616E207365740A20202020202020205F65786563757465486F6F6B282775706F6E53616E6974697A65417474726962757465272C2063757272656E744E6F64';
wwv_flow_api.g_varchar2_table(424) := '652C20686F6F6B4576656E74293B0A202020202020202076616C7565203D20686F6F6B4576656E742E6174747256616C75653B0A20202020202020202F2A204469642074686520686F6F6B7320617070726F7665206F6620746865206174747269627574';
wwv_flow_api.g_varchar2_table(425) := '653F202A2F0A202020202020202069662028686F6F6B4576656E742E666F7263654B6565704174747229207B0A20202020202020202020636F6E74696E75653B0A20202020202020207D0A0A20202020202020202F2A2052656D6F766520617474726962';
wwv_flow_api.g_varchar2_table(426) := '757465202A2F0A20202020202020205F72656D6F7665417474726962757465286E616D652C2063757272656E744E6F6465293B0A0A20202020202020202F2A204469642074686520686F6F6B7320617070726F7665206F66207468652061747472696275';
wwv_flow_api.g_varchar2_table(427) := '74653F202A2F0A20202020202020206966202821686F6F6B4576656E742E6B6565704174747229207B0A20202020202020202020636F6E74696E75653B0A20202020202020207D0A0A20202020202020202F2A20576F726B2061726F756E642061207365';
wwv_flow_api.g_varchar2_table(428) := '63757269747920697373756520696E206A517565727920332E30202A2F0A20202020202020206966202872656745787054657374282F5C2F3E2F692C2076616C75652929207B0A202020202020202020205F72656D6F7665417474726962757465286E61';
wwv_flow_api.g_varchar2_table(429) := '6D652C2063757272656E744E6F6465293B0A20202020202020202020636F6E74696E75653B0A20202020202020207D0A0A20202020202020202F2A2053616E6974697A652061747472696275746520636F6E74656E7420746F2062652074656D706C6174';
wwv_flow_api.g_varchar2_table(430) := '652D73616665202A2F0A202020202020202069662028534146455F464F525F54454D504C4154455329207B0A2020202020202020202076616C7565203D20737472696E675265706C6163652876616C75652C204D555354414348455F455850522424312C';
wwv_flow_api.g_varchar2_table(431) := '20272027293B0A2020202020202020202076616C7565203D20737472696E675265706C6163652876616C75652C204552425F455850522424312C20272027293B0A20202020202020207D0A0A20202020202020202F2A204973206076616C756560207661';
wwv_flow_api.g_varchar2_table(432) := '6C696420666F722074686973206174747269627574653F202A2F0A2020202020202020766172206C63546167203D2063757272656E744E6F64652E6E6F64654E616D652E746F4C6F7765724361736528293B0A202020202020202069662028215F697356';
wwv_flow_api.g_varchar2_table(433) := '616C6964417474726962757465286C635461672C206C634E616D652C2076616C75652929207B0A20202020202020202020636F6E74696E75653B0A20202020202020207D0A0A20202020202020202F2A2048616E646C6520696E76616C69642064617461';
wwv_flow_api.g_varchar2_table(434) := '2D2A2061747472696275746520736574206279207472792D6361746368696E67206974202A2F0A2020202020202020747279207B0A20202020202020202020696620286E616D65737061636555524929207B0A2020202020202020202020206375727265';
wwv_flow_api.g_varchar2_table(435) := '6E744E6F64652E7365744174747269627574654E53286E616D6573706163655552492C206E616D652C2076616C7565293B0A202020202020202020207D20656C7365207B0A2020202020202020202020202F2A2046616C6C6261636B20746F2073657441';
wwv_flow_api.g_varchar2_table(436) := '7474726962757465282920666F722062726F777365722D756E7265636F676E697A6564206E616D6573706163657320652E672E2022782D736368656D61222E202A2F0A20202020202020202020202063757272656E744E6F64652E736574417474726962';
wwv_flow_api.g_varchar2_table(437) := '757465286E616D652C2076616C7565293B0A202020202020202020207D0A0A202020202020202020206172726179506F7028444F4D5075726966792E72656D6F766564293B0A20202020202020207D20636174636820285F29207B7D0A2020202020207D';
wwv_flow_api.g_varchar2_table(438) := '0A0A2020202020202F2A2045786563757465206120686F6F6B2069662070726573656E74202A2F0A2020202020205F65786563757465486F6F6B2827616674657253616E6974697A6541747472696275746573272C2063757272656E744E6F64652C206E';
wwv_flow_api.g_varchar2_table(439) := '756C6C293B0A202020207D3B0A0A202020202F2A2A0A20202020202A205F73616E6974697A65536861646F77444F4D0A20202020202A0A20202020202A2040706172616D20207B446F63756D656E74467261676D656E747D20667261676D656E7420746F';
wwv_flow_api.g_varchar2_table(440) := '2069746572617465206F766572207265637572736976656C790A20202020202A2F0A20202020766172205F73616E6974697A65536861646F77444F4D203D2066756E6374696F6E205F73616E6974697A65536861646F77444F4D28667261676D656E7429';
wwv_flow_api.g_varchar2_table(441) := '207B0A20202020202076617220736861646F774E6F6465203D20766F696420303B0A20202020202076617220736861646F774974657261746F72203D205F6372656174654974657261746F7228667261676D656E74293B0A0A2020202020202F2A204578';
wwv_flow_api.g_varchar2_table(442) := '6563757465206120686F6F6B2069662070726573656E74202A2F0A2020202020205F65786563757465486F6F6B28276265666F726553616E6974697A65536861646F77444F4D272C20667261676D656E742C206E756C6C293B0A0A202020202020776869';
wwv_flow_api.g_varchar2_table(443) := '6C652028736861646F774E6F6465203D20736861646F774974657261746F722E6E6578744E6F6465282929207B0A20202020202020202F2A2045786563757465206120686F6F6B2069662070726573656E74202A2F0A20202020202020205F6578656375';
wwv_flow_api.g_varchar2_table(444) := '7465486F6F6B282775706F6E53616E6974697A65536861646F774E6F6465272C20736861646F774E6F64652C206E756C6C293B0A0A20202020202020202F2A2053616E6974697A65207461677320616E6420656C656D656E7473202A2F0A202020202020';
wwv_flow_api.g_varchar2_table(445) := '2020696620285F73616E6974697A65456C656D656E747328736861646F774E6F64652929207B0A20202020202020202020636F6E74696E75653B0A20202020202020207D0A0A20202020202020202F2A204465657020736861646F7720444F4D20646574';
wwv_flow_api.g_varchar2_table(446) := '6563746564202A2F0A202020202020202069662028736861646F774E6F64652E636F6E74656E7420696E7374616E63656F6620446F63756D656E74467261676D656E7429207B0A202020202020202020205F73616E6974697A65536861646F77444F4D28';
wwv_flow_api.g_varchar2_table(447) := '736861646F774E6F64652E636F6E74656E74293B0A20202020202020207D0A0A20202020202020202F2A20436865636B20617474726962757465732C2073616E6974697A65206966206E6563657373617279202A2F0A20202020202020205F73616E6974';
wwv_flow_api.g_varchar2_table(448) := '697A654174747269627574657328736861646F774E6F6465293B0A2020202020207D0A0A2020202020202F2A2045786563757465206120686F6F6B2069662070726573656E74202A2F0A2020202020205F65786563757465486F6F6B2827616674657253';
wwv_flow_api.g_varchar2_table(449) := '616E6974697A65536861646F77444F4D272C20667261676D656E742C206E756C6C293B0A202020207D3B0A0A202020202F2A2A0A20202020202A2053616E6974697A650A20202020202A205075626C6963206D6574686F642070726F766964696E672063';
wwv_flow_api.g_varchar2_table(450) := '6F72652073616E69746174696F6E2066756E6374696F6E616C6974790A20202020202A0A20202020202A2040706172616D207B537472696E677C4E6F64657D20646972747920737472696E67206F7220444F4D206E6F64650A20202020202A2040706172';
wwv_flow_api.g_varchar2_table(451) := '616D207B4F626A6563747D20636F6E66696775726174696F6E206F626A6563740A20202020202A2F0A202020202F2F2065736C696E742D64697361626C652D6E6578742D6C696E6520636F6D706C65786974790A20202020444F4D5075726966792E7361';
wwv_flow_api.g_varchar2_table(452) := '6E6974697A65203D2066756E6374696F6E202864697274792C2063666729207B0A20202020202076617220626F6479203D20766F696420303B0A20202020202076617220696D706F727465644E6F6465203D20766F696420303B0A202020202020766172';
wwv_flow_api.g_varchar2_table(453) := '2063757272656E744E6F6465203D20766F696420303B0A202020202020766172206F6C644E6F6465203D20766F696420303B0A2020202020207661722072657475726E4E6F6465203D20766F696420303B0A2020202020202F2A204D616B652073757265';
wwv_flow_api.g_varchar2_table(454) := '2077652068617665206120737472696E6720746F2073616E6974697A652E0A2020202020202020444F204E4F542072657475726E206561726C792C20617320746869732077696C6C2072657475726E207468652077726F6E6720747970652069660A2020';
wwv_flow_api.g_varchar2_table(455) := '20202020202074686520757365722068617320726571756573746564206120444F4D206F626A65637420726174686572207468616E206120737472696E67202A2F0A2020202020206966202821646972747929207B0A2020202020202020646972747920';
wwv_flow_api.g_varchar2_table(456) := '3D20273C212D2D3E273B0A2020202020207D0A0A2020202020202F2A20537472696E676966792C20696E206361736520646972747920697320616E206F626A656374202A2F0A20202020202069662028747970656F6620646972747920213D3D20277374';
wwv_flow_api.g_varchar2_table(457) := '72696E672720262620215F69734E6F64652864697274792929207B0A20202020202020202F2F2065736C696E742D64697361626C652D6E6578742D6C696E65206E6F2D6E6567617465642D636F6E646974696F6E0A202020202020202069662028747970';
wwv_flow_api.g_varchar2_table(458) := '656F662064697274792E746F537472696E6720213D3D202766756E6374696F6E2729207B0A202020202020202020207468726F7720747970654572726F724372656174652827746F537472696E67206973206E6F7420612066756E6374696F6E27293B0A';
wwv_flow_api.g_varchar2_table(459) := '20202020202020207D20656C7365207B0A202020202020202020206469727479203D2064697274792E746F537472696E6728293B0A2020202020202020202069662028747970656F6620646972747920213D3D2027737472696E672729207B0A20202020';
wwv_flow_api.g_varchar2_table(460) := '20202020202020207468726F7720747970654572726F7243726561746528276469727479206973206E6F74206120737472696E672C2061626F7274696E6727293B0A202020202020202020207D0A20202020202020207D0A2020202020207D0A0A202020';
wwv_flow_api.g_varchar2_table(461) := '2020202F2A20436865636B2077652063616E2072756E2E204F74686572776973652066616C6C206261636B206F722069676E6F7265202A2F0A2020202020206966202821444F4D5075726966792E6973537570706F7274656429207B0A20202020202020';
wwv_flow_api.g_varchar2_table(462) := '20696620285F747970656F662877696E646F772E746F53746174696348544D4C29203D3D3D20276F626A65637427207C7C20747970656F662077696E646F772E746F53746174696348544D4C203D3D3D202766756E6374696F6E2729207B0A2020202020';
wwv_flow_api.g_varchar2_table(463) := '202020202069662028747970656F66206469727479203D3D3D2027737472696E672729207B0A20202020202020202020202072657475726E2077696E646F772E746F53746174696348544D4C286469727479293B0A202020202020202020207D0A0A2020';
wwv_flow_api.g_varchar2_table(464) := '2020202020202020696620285F69734E6F64652864697274792929207B0A20202020202020202020202072657475726E2077696E646F772E746F53746174696348544D4C2864697274792E6F7574657248544D4C293B0A202020202020202020207D0A20';
wwv_flow_api.g_varchar2_table(465) := '202020202020207D0A0A202020202020202072657475726E2064697274793B0A2020202020207D0A0A2020202020202F2A2041737369676E20636F6E6669672076617273202A2F0A20202020202069662028215345545F434F4E46494729207B0A202020';
wwv_flow_api.g_varchar2_table(466) := '20202020205F7061727365436F6E66696728636667293B0A2020202020207D0A0A2020202020202F2A20436C65616E2075702072656D6F76656420656C656D656E7473202A2F0A202020202020444F4D5075726966792E72656D6F766564203D205B5D3B';
wwv_flow_api.g_varchar2_table(467) := '0A0A2020202020202F2A20436865636B20696620646972747920697320636F72726563746C7920747970656420666F7220494E5F504C414345202A2F0A20202020202069662028747970656F66206469727479203D3D3D2027737472696E672729207B0A';
wwv_flow_api.g_varchar2_table(468) := '2020202020202020494E5F504C414345203D2066616C73653B0A2020202020207D0A0A20202020202069662028494E5F504C41434529203B20656C73652069662028646972747920696E7374616E63656F66204E6F646529207B0A20202020202020202F';
wwv_flow_api.g_varchar2_table(469) := '2A204966206469727479206973206120444F4D20656C656D656E742C20617070656E6420746F20616E20656D70747920646F63756D656E7420746F2061766F69640A2020202020202020202020656C656D656E7473206265696E67207374726970706564';
wwv_flow_api.g_varchar2_table(470) := '2062792074686520706172736572202A2F0A2020202020202020626F6479203D205F696E6974446F63756D656E7428273C212D2D2D2D3E27293B0A2020202020202020696D706F727465644E6F6465203D20626F64792E6F776E6572446F63756D656E74';
wwv_flow_api.g_varchar2_table(471) := '2E696D706F72744E6F64652864697274792C2074727565293B0A202020202020202069662028696D706F727465644E6F64652E6E6F646554797065203D3D3D203120262620696D706F727465644E6F64652E6E6F64654E616D65203D3D3D2027424F4459';
wwv_flow_api.g_varchar2_table(472) := '2729207B0A202020202020202020202F2A204E6F646520697320616C7265616479206120626F64792C20757365206173206973202A2F0A20202020202020202020626F6479203D20696D706F727465644E6F64653B0A20202020202020207D20656C7365';
wwv_flow_api.g_varchar2_table(473) := '2069662028696D706F727465644E6F64652E6E6F64654E616D65203D3D3D202748544D4C2729207B0A20202020202020202020626F6479203D20696D706F727465644E6F64653B0A20202020202020207D20656C7365207B0A202020202020202020202F';
wwv_flow_api.g_varchar2_table(474) := '2F2065736C696E742D64697361626C652D6E6578742D6C696E6520756E69636F726E2F7072656665722D6E6F64652D617070656E640A20202020202020202020626F64792E617070656E644368696C6428696D706F727465644E6F6465293B0A20202020';
wwv_flow_api.g_varchar2_table(475) := '202020207D0A2020202020207D20656C7365207B0A20202020202020202F2A2045786974206469726563746C792069662077652068617665206E6F7468696E6720746F20646F202A2F0A2020202020202020696620282152455455524E5F444F4D202626';
wwv_flow_api.g_varchar2_table(476) := '2021534146455F464F525F54454D504C41544553202626202157484F4C455F444F43554D454E542026260A20202020202020202F2F2065736C696E742D64697361626C652D6E6578742D6C696E6520756E69636F726E2F7072656665722D696E636C7564';
wwv_flow_api.g_varchar2_table(477) := '65730A202020202020202064697274792E696E6465784F6628273C2729203D3D3D202D3129207B0A2020202020202020202072657475726E20747275737465645479706573506F6C6963792026262052455455524E5F545255535445445F54595045203F';
wwv_flow_api.g_varchar2_table(478) := '20747275737465645479706573506F6C6963792E63726561746548544D4C28646972747929203A2064697274793B0A20202020202020207D0A0A20202020202020202F2A20496E697469616C697A652074686520646F63756D656E7420746F20776F726B';
wwv_flow_api.g_varchar2_table(479) := '206F6E202A2F0A2020202020202020626F6479203D205F696E6974446F63756D656E74286469727479293B0A0A20202020202020202F2A20436865636B2077652068617665206120444F4D206E6F64652066726F6D207468652064617461202A2F0A2020';
wwv_flow_api.g_varchar2_table(480) := '2020202020206966202821626F647929207B0A2020202020202020202072657475726E2052455455524E5F444F4D203F206E756C6C203A20656D70747948544D4C3B0A20202020202020207D0A2020202020207D0A0A2020202020202F2A2052656D6F76';
wwv_flow_api.g_varchar2_table(481) := '6520666972737420656C656D656E74206E6F646520286F7572732920696620464F5243455F424F445920697320736574202A2F0A20202020202069662028626F647920262620464F5243455F424F445929207B0A20202020202020205F666F7263655265';
wwv_flow_api.g_varchar2_table(482) := '6D6F766528626F64792E66697273744368696C64293B0A2020202020207D0A0A2020202020202F2A20476574206E6F6465206974657261746F72202A2F0A202020202020766172206E6F64654974657261746F72203D205F637265617465497465726174';
wwv_flow_api.g_varchar2_table(483) := '6F7228494E5F504C414345203F206469727479203A20626F6479293B0A0A2020202020202F2A204E6F7720737461727420697465726174696E67206F76657220746865206372656174656420646F63756D656E74202A2F0A2020202020207768696C6520';
wwv_flow_api.g_varchar2_table(484) := '2863757272656E744E6F6465203D206E6F64654974657261746F722E6E6578744E6F6465282929207B0A20202020202020202F2A20466978204945277320737472616E6765206265686176696F722077697468206D616E6970756C617465642074657874';
wwv_flow_api.g_varchar2_table(485) := '4E6F64657320233839202A2F0A20202020202020206966202863757272656E744E6F64652E6E6F646554797065203D3D3D20332026262063757272656E744E6F6465203D3D3D206F6C644E6F646529207B0A20202020202020202020636F6E74696E7565';
wwv_flow_api.g_varchar2_table(486) := '3B0A20202020202020207D0A0A20202020202020202F2A2053616E6974697A65207461677320616E6420656C656D656E7473202A2F0A2020202020202020696620285F73616E6974697A65456C656D656E74732863757272656E744E6F64652929207B0A';
wwv_flow_api.g_varchar2_table(487) := '20202020202020202020636F6E74696E75653B0A20202020202020207D0A0A20202020202020202F2A20536861646F7720444F4D2064657465637465642C2073616E6974697A65206974202A2F0A20202020202020206966202863757272656E744E6F64';
wwv_flow_api.g_varchar2_table(488) := '652E636F6E74656E7420696E7374616E63656F6620446F63756D656E74467261676D656E7429207B0A202020202020202020205F73616E6974697A65536861646F77444F4D2863757272656E744E6F64652E636F6E74656E74293B0A2020202020202020';
wwv_flow_api.g_varchar2_table(489) := '7D0A0A20202020202020202F2A20436865636B20617474726962757465732C2073616E6974697A65206966206E6563657373617279202A2F0A20202020202020205F73616E6974697A65417474726962757465732863757272656E744E6F6465293B0A0A';
wwv_flow_api.g_varchar2_table(490) := '20202020202020206F6C644E6F6465203D2063757272656E744E6F64653B0A2020202020207D0A0A2020202020206F6C644E6F6465203D206E756C6C3B0A0A2020202020202F2A2049662077652073616E6974697A6564206064697274796020696E2D70';
wwv_flow_api.g_varchar2_table(491) := '6C6163652C2072657475726E2069742E202A2F0A20202020202069662028494E5F504C41434529207B0A202020202020202072657475726E2064697274793B0A2020202020207D0A0A2020202020202F2A2052657475726E2073616E6974697A65642073';
wwv_flow_api.g_varchar2_table(492) := '7472696E67206F7220444F4D202A2F0A2020202020206966202852455455524E5F444F4D29207B0A20202020202020206966202852455455524E5F444F4D5F465241474D454E5429207B0A2020202020202020202072657475726E4E6F6465203D206372';
wwv_flow_api.g_varchar2_table(493) := '65617465446F63756D656E74467261676D656E742E63616C6C28626F64792E6F776E6572446F63756D656E74293B0A0A202020202020202020207768696C652028626F64792E66697273744368696C6429207B0A2020202020202020202020202F2F2065';
wwv_flow_api.g_varchar2_table(494) := '736C696E742D64697361626C652D6E6578742D6C696E6520756E69636F726E2F7072656665722D6E6F64652D617070656E640A20202020202020202020202072657475726E4E6F64652E617070656E644368696C6428626F64792E66697273744368696C';
wwv_flow_api.g_varchar2_table(495) := '64293B0A202020202020202020207D0A20202020202020207D20656C7365207B0A2020202020202020202072657475726E4E6F6465203D20626F64793B0A20202020202020207D0A0A20202020202020206966202852455455524E5F444F4D5F494D504F';
wwv_flow_api.g_varchar2_table(496) := '525429207B0A202020202020202020202F2A0A20202020202020202020202041646F70744E6F64652829206973206E6F742075736564206265636175736520696E7465726E616C207374617465206973206E6F742072657365740A202020202020202020';
wwv_flow_api.g_varchar2_table(497) := '20202028652E672E207468652070617374206E616D6573206D6170206F6620612048544D4C466F726D456C656D656E74292C207468697320697320736166650A202020202020202020202020696E207468656F72792062757420776520776F756C642072';
wwv_flow_api.g_varchar2_table(498) := '6174686572206E6F74207269736B20616E6F746865722061747461636B20766563746F722E0A202020202020202020202020546865207374617465207468617420697320636C6F6E656420627920696D706F72744E6F64652829206973206578706C6963';
wwv_flow_api.g_varchar2_table(499) := '69746C7920646566696E65640A2020202020202020202020206279207468652073706563732E0A202020202020202020202A2F0A2020202020202020202072657475726E4E6F6465203D20696D706F72744E6F64652E63616C6C286F726967696E616C44';
wwv_flow_api.g_varchar2_table(500) := '6F63756D656E742C2072657475726E4E6F64652C2074727565293B0A20202020202020207D0A0A202020202020202072657475726E2072657475726E4E6F64653B0A2020202020207D0A0A2020202020207661722073657269616C697A656448544D4C20';
wwv_flow_api.g_varchar2_table(501) := '3D2057484F4C455F444F43554D454E54203F20626F64792E6F7574657248544D4C203A20626F64792E696E6E657248544D4C3B0A0A2020202020202F2A2053616E6974697A652066696E616C20737472696E672074656D706C6174652D73616665202A2F';
wwv_flow_api.g_varchar2_table(502) := '0A20202020202069662028534146455F464F525F54454D504C4154455329207B0A202020202020202073657269616C697A656448544D4C203D20737472696E675265706C6163652873657269616C697A656448544D4C2C204D555354414348455F455850';
wwv_flow_api.g_varchar2_table(503) := '522424312C20272027293B0A202020202020202073657269616C697A656448544D4C203D20737472696E675265706C6163652873657269616C697A656448544D4C2C204552425F455850522424312C20272027293B0A2020202020207D0A0A2020202020';
wwv_flow_api.g_varchar2_table(504) := '2072657475726E20747275737465645479706573506F6C6963792026262052455455524E5F545255535445445F54595045203F20747275737465645479706573506F6C6963792E63726561746548544D4C2873657269616C697A656448544D4C29203A20';
wwv_flow_api.g_varchar2_table(505) := '73657269616C697A656448544D4C3B0A202020207D3B0A0A202020202F2A2A0A20202020202A205075626C6963206D6574686F6420746F207365742074686520636F6E66696775726174696F6E206F6E63650A20202020202A20736574436F6E6669670A';
wwv_flow_api.g_varchar2_table(506) := '20202020202A0A20202020202A2040706172616D207B4F626A6563747D2063666720636F6E66696775726174696F6E206F626A6563740A20202020202A2F0A20202020444F4D5075726966792E736574436F6E666967203D2066756E6374696F6E202863';
wwv_flow_api.g_varchar2_table(507) := '666729207B0A2020202020205F7061727365436F6E66696728636667293B0A2020202020205345545F434F4E464947203D20747275653B0A202020207D3B0A0A202020202F2A2A0A20202020202A205075626C6963206D6574686F6420746F2072656D6F';
wwv_flow_api.g_varchar2_table(508) := '76652074686520636F6E66696775726174696F6E0A20202020202A20636C656172436F6E6669670A20202020202A0A20202020202A2F0A20202020444F4D5075726966792E636C656172436F6E666967203D2066756E6374696F6E202829207B0A202020';
wwv_flow_api.g_varchar2_table(509) := '202020434F4E464947203D206E756C6C3B0A2020202020205345545F434F4E464947203D2066616C73653B0A202020207D3B0A0A202020202F2A2A0A20202020202A205075626C6963206D6574686F6420746F20636865636B20696620616E2061747472';
wwv_flow_api.g_varchar2_table(510) := '69627574652076616C75652069732076616C69642E0A20202020202A2055736573206C6173742073657420636F6E6669672C20696620616E792E204F74686572776973652C207573657320636F6E6669672064656661756C74732E0A20202020202A2069';
wwv_flow_api.g_varchar2_table(511) := '7356616C69644174747269627574650A20202020202A0A20202020202A2040706172616D20207B737472696E677D2074616720546167206E616D65206F6620636F6E7461696E696E6720656C656D656E742E0A20202020202A2040706172616D20207B73';
wwv_flow_api.g_varchar2_table(512) := '7472696E677D206174747220417474726962757465206E616D652E0A20202020202A2040706172616D20207B737472696E677D2076616C7565204174747269627574652076616C75652E0A20202020202A204072657475726E207B426F6F6C65616E7D20';
wwv_flow_api.g_varchar2_table(513) := '52657475726E732074727565206966206076616C7565602069732076616C69642E204F74686572776973652C2072657475726E732066616C73652E0A20202020202A2F0A20202020444F4D5075726966792E697356616C6964417474726962757465203D';
wwv_flow_api.g_varchar2_table(514) := '2066756E6374696F6E20287461672C20617474722C2076616C756529207B0A2020202020202F2A20496E697469616C697A652073686172656420636F6E6669672076617273206966206E65636573736172792E202A2F0A2020202020206966202821434F';
wwv_flow_api.g_varchar2_table(515) := '4E46494729207B0A20202020202020205F7061727365436F6E666967287B7D293B0A2020202020207D0A0A202020202020766172206C63546167203D20737472696E67546F4C6F7765724361736528746167293B0A202020202020766172206C634E616D';
wwv_flow_api.g_varchar2_table(516) := '65203D20737472696E67546F4C6F776572436173652861747472293B0A20202020202072657475726E205F697356616C6964417474726962757465286C635461672C206C634E616D652C2076616C7565293B0A202020207D3B0A0A202020202F2A2A0A20';
wwv_flow_api.g_varchar2_table(517) := '202020202A20416464486F6F6B0A20202020202A205075626C6963206D6574686F6420746F2061646420444F4D50757269667920686F6F6B730A20202020202A0A20202020202A2040706172616D207B537472696E677D20656E747279506F696E742065';
wwv_flow_api.g_varchar2_table(518) := '6E74727920706F696E7420666F722074686520686F6F6B20746F206164640A20202020202A2040706172616D207B46756E6374696F6E7D20686F6F6B46756E6374696F6E2066756E6374696F6E20746F20657865637574650A20202020202A2F0A202020';
wwv_flow_api.g_varchar2_table(519) := '20444F4D5075726966792E616464486F6F6B203D2066756E6374696F6E2028656E747279506F696E742C20686F6F6B46756E6374696F6E29207B0A20202020202069662028747970656F6620686F6F6B46756E6374696F6E20213D3D202766756E637469';
wwv_flow_api.g_varchar2_table(520) := '6F6E2729207B0A202020202020202072657475726E3B0A2020202020207D0A0A202020202020686F6F6B735B656E747279506F696E745D203D20686F6F6B735B656E747279506F696E745D207C7C205B5D3B0A2020202020206172726179507573682868';
wwv_flow_api.g_varchar2_table(521) := '6F6F6B735B656E747279506F696E745D2C20686F6F6B46756E6374696F6E293B0A202020207D3B0A0A202020202F2A2A0A20202020202A2052656D6F7665486F6F6B0A20202020202A205075626C6963206D6574686F6420746F2072656D6F7665206120';
wwv_flow_api.g_varchar2_table(522) := '444F4D50757269667920686F6F6B206174206120676976656E20656E747279506F696E740A20202020202A2028706F70732069742066726F6D2074686520737461636B206F6620686F6F6B73206966206D6F7265206172652070726573656E74290A2020';
wwv_flow_api.g_varchar2_table(523) := '2020202A0A20202020202A2040706172616D207B537472696E677D20656E747279506F696E7420656E74727920706F696E7420666F722074686520686F6F6B20746F2072656D6F76650A20202020202A2F0A20202020444F4D5075726966792E72656D6F';
wwv_flow_api.g_varchar2_table(524) := '7665486F6F6B203D2066756E6374696F6E2028656E747279506F696E7429207B0A20202020202069662028686F6F6B735B656E747279506F696E745D29207B0A20202020202020206172726179506F7028686F6F6B735B656E747279506F696E745D293B';
wwv_flow_api.g_varchar2_table(525) := '0A2020202020207D0A202020207D3B0A0A202020202F2A2A0A20202020202A2052656D6F7665486F6F6B730A20202020202A205075626C6963206D6574686F6420746F2072656D6F766520616C6C20444F4D50757269667920686F6F6B73206174206120';
wwv_flow_api.g_varchar2_table(526) := '676976656E20656E747279506F696E740A20202020202A0A20202020202A2040706172616D20207B537472696E677D20656E747279506F696E7420656E74727920706F696E7420666F722074686520686F6F6B7320746F2072656D6F76650A2020202020';
wwv_flow_api.g_varchar2_table(527) := '2A2F0A20202020444F4D5075726966792E72656D6F7665486F6F6B73203D2066756E6374696F6E2028656E747279506F696E7429207B0A20202020202069662028686F6F6B735B656E747279506F696E745D29207B0A2020202020202020686F6F6B735B';
wwv_flow_api.g_varchar2_table(528) := '656E747279506F696E745D203D205B5D3B0A2020202020207D0A202020207D3B0A0A202020202F2A2A0A20202020202A2052656D6F7665416C6C486F6F6B730A20202020202A205075626C6963206D6574686F6420746F2072656D6F766520616C6C2044';
wwv_flow_api.g_varchar2_table(529) := '4F4D50757269667920686F6F6B730A20202020202A0A20202020202A2F0A20202020444F4D5075726966792E72656D6F7665416C6C486F6F6B73203D2066756E6374696F6E202829207B0A202020202020686F6F6B73203D207B7D3B0A202020207D3B0A';
wwv_flow_api.g_varchar2_table(530) := '0A2020202072657475726E20444F4D5075726966793B0A20207D0A0A202076617220707572696679203D20637265617465444F4D50757269667928293B0A0A202072657475726E207075726966793B0A0A7D29293B0A2F2F2320736F757263654D617070';
wwv_flow_api.g_varchar2_table(531) := '696E6755524C3D7075726966792E6A732E6D61700A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(149721318989111640)
,p_plugin_id=>wwv_flow_api.id(81041461157632344)
,p_file_name=>'js/dompurify/2.2.6/purify.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/shared_components/plugins/region_type/rw_apex_vs_monaco_editor
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(30061467969602355995)
,p_plugin_type=>'REGION TYPE'
,p_name=>'RW.APEX.VS.MONACO.EDITOR'
,p_display_name=>'APEX-VS-Monaco-Editor'
,p_supported_ui_types=>'DESKTOP'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','RW.APEX.VS.MONACO.EDITOR'),'/c/plugins_apex/apex_vs_monaco_editor_1_0/')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'FUNCTION SQL_TO_SYS_REFCURSOR (',
'    P_IN_SQL_STATEMENT   CLOB,',
'    P_IN_BINDS           SYS.DBMS_SQL.VARCHAR2_TABLE',
') RETURN SYS_REFCURSOR AS',
'    VR_CURS         BINARY_INTEGER;',
'    VR_REF_CURSOR   SYS_REFCURSOR;',
'    VR_EXEC         BINARY_INTEGER;',
'/* TODO make size dynamic */',
'    VR_BINDS        VARCHAR(100);',
'BEGIN',
'    VR_CURS         := DBMS_SQL.OPEN_CURSOR;',
'    DBMS_SQL.PARSE(',
'        VR_CURS,',
'        P_IN_SQL_STATEMENT,',
'        DBMS_SQL.NATIVE',
'    );',
'    IF P_IN_BINDS.COUNT > 0 THEN',
'        FOR I IN 1..P_IN_BINDS.COUNT LOOP',
'        /* TODO find out how to prevent ltrim */',
'            VR_BINDS   := LTRIM(',
'                P_IN_BINDS(I),',
'                '':''',
'            );',
'            DBMS_SQL.BIND_VARIABLE(',
'                VR_CURS,',
'                VR_BINDS,',
'                V(VR_BINDS)',
'            );',
'        END LOOP;',
'    END IF;',
'',
'    VR_EXEC         := DBMS_SQL.EXECUTE(VR_CURS);',
'    VR_REF_CURSOR   := DBMS_SQL.TO_REFCURSOR(VR_CURS);',
'    RETURN VR_REF_CURSOR;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        IF DBMS_SQL.IS_OPEN(VR_CURS) THEN',
'            DBMS_SQL.CLOSE_CURSOR(VR_CURS);',
'        END IF;',
'        RAISE;',
'END;',
'',
'FUNCTION F_AJAX (',
'    P_REGION   IN         APEX_PLUGIN.T_REGION,',
'    P_PLUGIN   IN         APEX_PLUGIN.T_PLUGIN',
') RETURN APEX_PLUGIN.T_REGION_AJAX_RESULT IS',
'    VR_RESULT              APEX_PLUGIN.T_REGION_AJAX_RESULT;',
'    VR_CUR                 SYS_REFCURSOR;',
'    VR_BIND_NAMES          SYS.DBMS_SQL.VARCHAR2_TABLE;',
'    VR_FUNCTION_TYPE       VARCHAR2(100) := APEX_APPLICATION.G_X01;',
'    VR_PLSQL_UPLOAD_CLOB   P_REGION.ATTRIBUTE_02%TYPE := P_REGION.ATTRIBUTE_02;',
'    VR_CLOB                CLOB := NULL;',
'    VR_TMP_STR             VARCHAR2(32767);',
'BEGIN',
'    IF VR_FUNCTION_TYPE = ''POST'' THEN',
'        BEGIN',
'            DBMS_LOB.CREATETEMPORARY(',
'                VR_CLOB,',
'                FALSE,',
'                DBMS_LOB.SESSION',
'            );',
'            FOR I IN 1..APEX_APPLICATION.G_F01.COUNT LOOP',
'                VR_TMP_STR := WWV_FLOW.G_F01(I);',
'                IF LENGTH(VR_TMP_STR) > 0 THEN',
'                    DBMS_LOB.WRITEAPPEND(',
'                        VR_CLOB,',
'                        LENGTH(VR_TMP_STR),',
'                        VR_TMP_STR',
'                    );',
'                END IF;',
'',
'            END LOOP;',
'',
'            BEGIN',
'                EXECUTE IMMEDIATE ( VR_PLSQL_UPLOAD_CLOB )',
'                    USING VR_CLOB;',
'            EXCEPTION',
'                WHEN OTHERS THEN',
'                    APEX_DEBUG.ERROR(''APEX-VS-Monaco-Editor - Error while executing dynamic PL/SQL Block after Upload CLOB.'');',
'                    APEX_DEBUG.ERROR(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);',
'            END;',
'',
'            APEX_DEBUG.INFO(''APEX-VS-Monaco-Editor - Upload and Execute of Dynamic PL/SQL Block successful with CLOB: '' ||',
'            ',
'            DBMS_LOB.GETLENGTH(VR_CLOB) || '' Bytes.'');',
'            APEX_JSON.OPEN_OBJECT;',
'            APEX_JSON.WRITE(',
'                P_NAME    => ''result'',',
'                P_VALUE   => ''ok''',
'            );',
'            APEX_JSON.CLOSE_OBJECT;',
'',
'            DBMS_LOB.FREETEMPORARY(VR_CLOB);',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                DBMS_LOB.FREETEMPORARY(VR_CLOB);',
'                APEX_DEBUG.ERROR(''APEX-VS-Monaco-Editor - Error while upload clob'');',
'                APEX_DEBUG.ERROR(SQLERRM);',
'                APEX_DEBUG.ERROR(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);',
'                RAISE;',
'        END;',
'    ELSE',
'        /* undocumented function of APEX for get all bindings */',
'        VR_BIND_NAMES   := WWV_FLOW_UTILITIES.GET_BINDS(P_REGION.SOURCE);',
'',
'        /* execute binding*/',
'        VR_CUR          := SQL_TO_SYS_REFCURSOR(',
'            RTRIM(',
'                P_REGION.SOURCE,',
'                '';''',
'            ),',
'            VR_BIND_NAMES',
'        );',
'',
'        /* create json */',
'        APEX_JSON.OPEN_OBJECT;',
'        APEX_JSON.WRITE(',
'            ''rows'',',
'            VR_CUR',
'        );',
'        APEX_JSON.CLOSE_OBJECT;',
'    END IF;',
'',
'    RETURN VR_RESULT;',
'END;',
'',
'FUNCTION F_RENDER (',
'    P_REGION                IN   APEX_PLUGIN.T_REGION,',
'    P_PLUGIN                IN   APEX_PLUGIN.T_PLUGIN,',
'    P_IS_PRINTER_FRIENDLY   IN   BOOLEAN',
') RETURN APEX_PLUGIN.T_REGION_RENDER_RESULT AS',
'',
'    /* Render result variable needed for return */',
'    VR_RENDER_RESULT APEX_PLUGIN.T_REGION_RENDER_RESULT;',
'    /* static if of the chart region (should be escaped for security) */',
'    C_STATIC_ID CONSTANT VARCHAR2(32767) := APEX_ESCAPE.HTML_ATTRIBUTE(P_REGION.STATIC_ID) || ''-container'';',
'    C_REFRESH_ID CONSTANT VARCHAR2(32767) := APEX_ESCAPE.HTML_ATTRIBUTE(P_REGION.STATIC_ID);',
'    /* list of items that should be submitted */',
'    C_ITEMS2SUBMIT CONSTANT APEX_APPLICATION_PAGE_REGIONS.AJAX_ITEMS_TO_SUBMIT%TYPE := APEX_PLUGIN_UTIL.PAGE_ITEM_NAMES_TO_JQUERY(P_REGION.AJAX_ITEMS_TO_SUBMIT);',
'BEGIN',
'    APEX_JAVASCRIPT.ADD_REQUIREJS;',
'    ',
'    /* add script files (your javascript) */',
'    APEX_JAVASCRIPT.ADD_LIBRARY(',
'        P_NAME                  => ''script'',',
'        P_DIRECTORY             => P_PLUGIN.FILE_PREFIX,',
'        P_VERSION               => NULL,',
'        P_CHECK_TO_ADD_MINIFIED => TRUE,',
'        P_KEY                   => ''vsmonacoeditorjssrc''',
'    );',
'',
'    /* add chart container */',
'    HTP.P(''<div id="''|| C_STATIC_ID ||''" class="apex-monaco-editor-container"></div>'');',
'    /* call script js */',
'    APEX_JAVASCRIPT.ADD_ONLOAD_CODE( ''apexMonacoEditor(apex).initialize(''',
'     /* id of the chart container */',
'     || APEX_JAVASCRIPT.ADD_VALUE( C_STATIC_ID, TRUE )',
'     /* id where refresh is binded */',
'     || APEX_JAVASCRIPT.ADD_VALUE( C_REFRESH_ID, TRUE )',
'     /* id for ajax call */',
'     || APEX_JAVASCRIPT.ADD_VALUE( APEX_PLUGIN.GET_AJAX_IDENTIFIER, TRUE )',
'     /* items to submit for ajax call */',
'     || APEX_JAVASCRIPT.ADD_VALUE( C_ITEMS2SUBMIT, TRUE )',
'     /* add path to editor files */',
'     || /*APEX_JAVASCRIPT.ADD_VALUE( APEX_UTIL.HOST_URL(''APEX_PATH'') || ''/'' || P_PLUGIN.FILE_PREFIX || ''vs'', TRUE )*/',
'     --APEX_JAVASCRIPT.ADD_VALUE( APEX_UTIL.HOST_URL(''IMGPRE'') || ''/'' || ''vs'', TRUE )',
'     APEX_JAVASCRIPT.ADD_VALUE(P_PLUGIN.FILE_PREFIX || ''vs'', TRUE )',
'     /* add options */',
'     || APEX_JAVASCRIPT.ADD_VALUE( P_REGION.ATTRIBUTE_01, TRUE )',
'     || APEX_JAVASCRIPT.ADD_VALUE( P_REGION.ATTRIBUTE_03, TRUE )',
'     || APEX_JAVASCRIPT.ADD_VALUE( P_REGION.ATTRIBUTE_04, TRUE )',
'     || APEX_JAVASCRIPT.ADD_VALUE( P_REGION.ATTRIBUTE_05, TRUE )',
'     || APEX_JAVASCRIPT.ADD_VALUE( APEX_REGION.IS_READ_ONLY, FALSE )',
'     || '');'');',
'',
'    RETURN VR_RENDER_RESULT;',
'END;'))
,p_api_version=>2
,p_render_function=>'F_RENDER'
,p_ajax_function=>'F_AJAX'
,p_standard_attributes=>'SOURCE_SQL:AJAX_ITEMS_TO_SUBMIT'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This plug-in is used to render the visual studio monaco code editor in APEX. You can load source code as clob and the same or another source code as diff. The plug-in is also able to store the edited code back into the database e.g. in an APEX Col'
||'lection as clob.</p>',
'<p>If you need to trigger the save option from outside of the editor just call with JavaScript e.g. from a dynamic action: <b>$("#EDITOR_STATIC_ID").trigger("save");</b></p>'))
,p_version_identifier=>'1.0.2'
,p_about_url=>'https://github.com/RonnyWeiss'
,p_files_version=>330
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30061468277907355999)
,p_plugin_id=>wwv_flow_api.id(30061467969602355995)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Height'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'50vh'
,p_is_translatable=>false
,p_help_text=>'Set height of the editor in px, vh, %...'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30061468646321356001)
,p_plugin_id=>wwv_flow_api.id(30061467969602355995)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>9999
,p_prompt=>'Execute on Save'
,p_attribute_type=>'PLSQL'
,p_is_required=>true
,p_default_value=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VR_CLOB       CLOB := :CLOB; ',
'    /* You need to use V(''P1_COL_NAME'') because :P1_COL_NAME is not supported here */',
'    VR_COL_NAME   VARCHAR2(200) := NVL(',
'        V(''P1_COL_NAME''),',
'        ''EDITOR_CODE_COLLECTION''',
'    );',
'BEGIN',
'    BEGIN',
'        APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => VR_COL_NAME);',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            NULL;',
'    END;',
'',
'    APEX_COLLECTION.ADD_MEMBER(',
'        P_COLLECTION_NAME   => VR_COL_NAME,',
'        P_CLOB001           => VR_CLOB',
'    );',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'        APEX_DEBUG.ERROR(DBMS_UTILITY.FORMAT_ERROR_STACK);',
'END;'))
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>',
'DECLARE',
'    VR_CLOB       CLOB := :CLOB; ',
'    /* You need to use V(''P1_COL_NAME'') because :P1_COL_NAME is not supported here */',
'    VR_COL_NAME   VARCHAR2(200) := NVL(',
'        V(''P1_COL_NAME''),',
'        ''EDITOR_CODE_COLLECTION''',
'    );',
'BEGIN',
'    BEGIN',
'        APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => VR_COL_NAME);',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            NULL;',
'    END;',
'',
'    APEX_COLLECTION.ADD_MEMBER(',
'        P_COLLECTION_NAME   => VR_COL_NAME,',
'        P_CLOB001           => VR_CLOB',
'    );',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'        APEX_DEBUG.ERROR(DBMS_UTILITY.FORMAT_ERROR_STACK);',
'END;',
'</pre>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30061469022601356001)
,p_plugin_id=>wwv_flow_api.id(30061467969602355995)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Language'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'sql'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Set the language for the editor. This setting can be overwritten by the sql query source. Just set language in JSON like it''s in this select list attribute.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061489468505356016)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>10
,p_display_value=>'abap'
,p_return_value=>'abap'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061483446620356012)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>20
,p_display_value=>'azcli'
,p_return_value=>'azcli'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061472494319356004)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>30
,p_display_value=>'bat'
,p_return_value=>'bat'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061483943998356012)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>40
,p_display_value=>'c'
,p_return_value=>'c'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061499928043356024)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>50
,p_display_value=>'cameligo'
,p_return_value=>'cameligo'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061472900893356004)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>60
,p_display_value=>'clojure'
,p_return_value=>'clojure'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061473474267356005)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>70
,p_display_value=>'coffeescript'
,p_return_value=>'coffeescript'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061493995062356019)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>80
,p_display_value=>'cpp'
,p_return_value=>'cpp'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061473925857356005)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>90
,p_display_value=>'csharp'
,p_return_value=>'csharp'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061489910015356016)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>100
,p_display_value=>'csp'
,p_return_value=>'csp'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061490445954356017)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>110
,p_display_value=>'css'
,p_return_value=>'css'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061490898667356017)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>120
,p_display_value=>'dart'
,p_return_value=>'dart'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061484407976356012)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>130
,p_display_value=>'dockerfile'
,p_return_value=>'dockerfile'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061500420540356024)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>140
,p_display_value=>'fsharp'
,p_return_value=>'fsharp'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061500982248356024)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>150
,p_display_value=>'go'
,p_return_value=>'go'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061474424663356005)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>160
,p_display_value=>'graphql'
,p_return_value=>'graphql'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061494471479356019)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>170
,p_display_value=>'handlebars'
,p_return_value=>'handlebars'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061491458543356017)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>180
,p_display_value=>'hcl'
,p_return_value=>'hcl'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061486967947356014)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>190
,p_display_value=>'html'
,p_return_value=>'html'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061494932358356020)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>200
,p_display_value=>'ini'
,p_return_value=>'ini'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061487424581356014)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>210
,p_display_value=>'java'
,p_return_value=>'java'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061495421306356020)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>220
,p_display_value=>'javascript'
,p_return_value=>'javascript'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061484940366356013)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>230
,p_display_value=>'json'
,p_return_value=>'json'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061487930689356015)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>240
,p_display_value=>'julia'
,p_return_value=>'julia'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061488429428356015)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>250
,p_display_value=>'kotlin'
,p_return_value=>'kotlin'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061488913171356015)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>260
,p_display_value=>'less'
,p_return_value=>'less'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061495989905356021)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>270
,p_display_value=>'lexon'
,p_return_value=>'lexon'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061496440564356021)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>280
,p_display_value=>'lua'
,p_return_value=>'lua'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061474981480356006)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>290
,p_display_value=>'markdown'
,p_return_value=>'markdown'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061475418700356006)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>300
,p_display_value=>'mips'
,p_return_value=>'mips'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061492897199356018)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>310
,p_display_value=>'msdax'
,p_return_value=>'msdax'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061485455429356013)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>320
,p_display_value=>'mysql'
,p_return_value=>'mysql'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061469418601356001)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>330
,p_display_value=>'objective-c'
,p_return_value=>'objective-c'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061493395701356019)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>340
,p_display_value=>'pascal'
,p_return_value=>'pascal'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061469918935356002)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>350
,p_display_value=>'pascaligo'
,p_return_value=>'pascaligo'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061475960980356006)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>360
,p_display_value=>'perl'
,p_return_value=>'perl'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061476400015356007)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>370
,p_display_value=>'pgsql'
,p_return_value=>'pgsql'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061480428527356010)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>380
,p_display_value=>'php'
,p_return_value=>'php'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061470436564356002)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>390
,p_display_value=>'plaintext'
,p_return_value=>'plaintext'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061477936206356008)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>400
,p_display_value=>'postiats'
,p_return_value=>'postiats'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061476961064356007)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>410
,p_display_value=>'powerquery'
,p_return_value=>'powerquery'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061478493450356008)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>420
,p_display_value=>'powershell'
,p_return_value=>'powershell'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061496976257356022)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>430
,p_display_value=>'pug'
,p_return_value=>'pug'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061497455767356022)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>440
,p_display_value=>'python'
,p_return_value=>'python'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061478909407356009)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>450
,p_display_value=>'r'
,p_return_value=>'r'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061480926937356010)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>460
,p_display_value=>'razor'
,p_return_value=>'razor'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061481467179356010)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>470
,p_display_value=>'redis'
,p_return_value=>'redis'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061479475028356009)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>480
,p_display_value=>'redshift'
,p_return_value=>'redshift'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061481966571356011)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>490
,p_display_value=>'restructuredtext'
,p_return_value=>'restructuredtext'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061477396643356007)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>500
,p_display_value=>'ruby'
,p_return_value=>'ruby'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061485979623356013)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>510
,p_display_value=>'rust'
,p_return_value=>'rust'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061479964651356009)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>520
,p_display_value=>'sb'
,p_return_value=>'sb'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061482454199356011)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>530
,p_display_value=>'scala'
,p_return_value=>'scala'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061497917341356022)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>540
,p_display_value=>'scheme'
,p_return_value=>'scheme'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061486477934356014)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>550
,p_display_value=>'scss'
,p_return_value=>'scss'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061501409136356025)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>560
,p_display_value=>'shell'
,p_return_value=>'shell'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061470990853356003)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>570
,p_display_value=>'sol'
,p_return_value=>'sol'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061501980598356025)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>580
,p_display_value=>'sql'
,p_return_value=>'sql'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061498406537356023)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>590
,p_display_value=>'st'
,p_return_value=>'st'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061502399733356026)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>600
,p_display_value=>'swift'
,p_return_value=>'swift'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061502939914356026)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>610
,p_display_value=>'systemverilog'
,p_return_value=>'systemverilog'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061471449623356003)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>620
,p_display_value=>'tcl'
,p_return_value=>'tcl'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061482983895356011)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>630
,p_display_value=>'twig'
,p_return_value=>'twig'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061498969737356023)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>640
,p_display_value=>'typescript'
,p_return_value=>'typescript'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061499486673356023)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>650
,p_display_value=>'vb'
,p_return_value=>'vb'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061492465084356018)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>660
,p_display_value=>'verilog'
,p_return_value=>'verilog'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061491919067356018)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>670
,p_display_value=>'xml'
,p_return_value=>'xml'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061471934422356003)
,p_plugin_attribute_id=>wwv_flow_api.id(30061469022601356001)
,p_display_sequence=>680
,p_display_value=>'yaml'
,p_return_value=>'yaml'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30061503421362356026)
,p_plugin_id=>wwv_flow_api.id(30061467969602355995)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Theme'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'vs-dark'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Set Theme of the editor'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061504387869356027)
,p_plugin_attribute_id=>wwv_flow_api.id(30061503421362356026)
,p_display_sequence=>10
,p_display_value=>'Visual Studio Dark'
,p_return_value=>'vs-dark'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061504798713356027)
,p_plugin_attribute_id=>wwv_flow_api.id(30061503421362356026)
,p_display_sequence=>20
,p_display_value=>'Visual Studio'
,p_return_value=>'vs'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061503865074356027)
,p_plugin_attribute_id=>wwv_flow_api.id(30061503421362356026)
,p_display_sequence=>30
,p_display_value=>'High Contrast Black'
,p_return_value=>'hc-black'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30061505374154356028)
,p_plugin_id=>wwv_flow_api.id(30061467969602355995)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Buttons'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_default_value=>'undo:redo:search:diff:save'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Set the buttons that should be shown above the editor.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061507253885356029)
,p_plugin_attribute_id=>wwv_flow_api.id(30061505374154356028)
,p_display_sequence=>10
,p_display_value=>'Undo'
,p_return_value=>'undo'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061506288311356028)
,p_plugin_attribute_id=>wwv_flow_api.id(30061505374154356028)
,p_display_sequence=>20
,p_display_value=>'Redo'
,p_return_value=>'redo'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061506739566356029)
,p_plugin_attribute_id=>wwv_flow_api.id(30061505374154356028)
,p_display_sequence=>30
,p_display_value=>'Search'
,p_return_value=>'search'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061507731044356030)
,p_plugin_attribute_id=>wwv_flow_api.id(30061505374154356028)
,p_display_sequence=>40
,p_display_value=>'Switch between Single Editor and Diff-Editor'
,p_return_value=>'diff'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30061505723533356028)
,p_plugin_attribute_id=>wwv_flow_api.id(30061505374154356028)
,p_display_sequence=>50
,p_display_value=>'Save'
,p_return_value=>'save'
);
wwv_flow_api.create_plugin_std_attribute(
 p_id=>wwv_flow_api.id(30061508983215356035)
,p_plugin_id=>wwv_flow_api.id(30061467969602355995)
,p_name=>'SOURCE_SQL'
,p_default_value=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'   /* value of the editor that can be edited and saved */',
'   ''DECLARE',
'    TEXT VARCHAR2(25);',
'BEGIN',
'    TEXT := ''''HELLO World'''';',
'    DBMS_OUTPUT.PUT_LINE(TEXT);',
'END;'' AS VALUE_EDIT,',
'   /* value to make diff with first value */',
'   ''DECLARE',
'    TEXT VARCHAR2(25);',
'BEGIN',
'    TEXT := ''''HELLO World'''';',
'    DBMS_OUTPUT.PUT_LINE(TEXT);',
'END;'' AS VALUE_DIFF,',
'   /* language that should be used e.g. sql, javascript, json... ',
'      all avail. languages you find in attributes */',
'   ''sql'' AS LANGUAGE',
'FROM',
'   DUAL'))
,p_sql_min_column_count=>1
,p_sql_max_column_count=>3
,p_depending_on_has_to_exist=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>',
'SELECT',
'   /* value of the editor that can be edited and saved */',
'   ''DECLARE',
'    TEXT VARCHAR2(25);',
'BEGIN',
'    TEXT := ''''HELLO World'''';',
'    DBMS_OUTPUT.PUT_LINE(TEXT);',
'END;'' AS VALUE_EDIT,',
'   /* value to make diff with first value */',
'   ''DECLARE',
'    TEXT VARCHAR2(25);',
'BEGIN',
'    TEXT := ''''HELLO World'''';',
'    DBMS_OUTPUT.PUT_LINE(TEXT);',
'END;'' AS VALUE_DIFF,',
'   /* language that should be used e.g. sql, javascript, json... ',
'      all avail. languages you find in attributes */',
'   ''sql'' AS LANGUAGE',
'FROM',
'   DUAL',
'</pre>'))
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(30061509395051356037)
,p_plugin_id=>wwv_flow_api.id(30061467969602355995)
,p_name=>'rendered'
,p_display_name=>'Rendered'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(30061509698775356038)
,p_plugin_id=>wwv_flow_api.id(30061467969602355995)
,p_name=>'upload-error'
,p_display_name=>'Upload of Text has caused an error'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(30061510133159356038)
,p_plugin_id=>wwv_flow_api.id(30061467969602355995)
,p_name=>'upload-finished'
,p_display_name=>'Upload of Text finished'
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(32751489126654074)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_api.id(32611854534653869)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(32718024323654000)
,p_nav_list_template_options=>'#DEFAULT#:js-defaultCollapsed:js-navCollapsed--hidden:t-TreeNav--classic'
,p_css_file_urls=>'#APP_IMAGES#app-icon.css?version=#APP_VERSION#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(32751260605654073)
,p_nav_bar_list_template_id=>wwv_flow_api.id(32717686961653999)
,p_nav_bar_template_options=>'#DEFAULT#:js-menu-callout'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(32751489126654074)
,p_name=>'Global Page - Desktop'
,p_step_title=>'Global Page - Desktop'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_last_updated_by=>'GPV'
,p_last_upd_yyyymmddhh24miss=>'20201211141045'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(32751489126654074)
,p_name=>'Start Page'
,p_alias=>'START'
,p_step_title=>'Start Page'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(32630280113653934)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'GPV'
,p_last_upd_yyyymmddhh24miss=>'20210301162235'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32802917067893974)
,p_plug_name=>'Comapre APEX Applications'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(32664463708653960)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(32804716822893976)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(32802917067893974)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(32728906862654015)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Start Wizard'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:300:&SESSION.::&DEBUG.:300,310,320::'
,p_icon_css_classes=>'fa-rocket'
,p_grid_new_row=>'Y'
);
end;
/
prompt --application/pages/page_00100
begin
wwv_flow_api.create_page(
 p_id=>100
,p_user_interface_id=>wwv_flow_api.id(32751489126654074)
,p_name=>'Application'
,p_alias=>'APPLICATION'
,p_step_title=>'Application'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function setLeaf(fromLine,toLine,callId,apexId) {',
'  $s("P100_APEX_ID",apexId);  ',
'  $s("P100_CALL_ID",callId);',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.parameter_val_change_FROM {',
'  color: red;',
'  text-decoration: line-through;',
'}',
'',
'.parameter_val_change_TO {',
'  color: green;',
'}',
'',
'',
'.t-Body-contentInner, .container, .row, .col-max-height {',
'  height: 100%;',
'}',
' ',
'#TREE, #DETAILS {',
'  position: absolute;',
'  left: 0;',
'  right: 0;',
'  top: 0;',
'  bottom: 0;',
'  overflow: auto;',
'  padding-left: 10px;',
'}',
'',
'.am-deleted {',
'  color: red !important;  ',
'}',
'',
'.am-insert {',
'  color: green !important;  ',
'}',
'',
'.am_changed {',
'  color: brown !important;  ',
'}',
'',
'.am-parent {',
'  color: blueviolet !important;  ',
'}',
''))
,p_step_template=>wwv_flow_api.id(32630280113653934)
,p_page_template_options=>'#DEFAULT#'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#TREE {  ',
'  height: calc(100vh - 115px);',
'  margin-bottom: 0px;',
'}',
'',
'#TREE .t-Region-bodyWrap .t-Region-body {  ',
'  height: calc(100vh - 180px);',
'}',
'',
'footer div {',
'  display: none;',
'}',
''))
,p_last_updated_by=>'PAVEL'
,p_last_upd_yyyymmddhh24miss=>'20210503103231'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(35006156750072667)
,p_plug_name=>'Application '
,p_region_name=>'TREE'
,p_region_css_classes=>'region-max-height'
,p_region_template_options=>'#DEFAULT#:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(32666307465653962)
,p_plug_display_sequence=>10
,p_plug_grid_column_css_classes=>'col-max-height'
,p_plug_display_point=>'BODY'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return am_app.get_tree_query(',
'    p_show_changes_only => :P100_SHOW_CHANGES_ONLY_LEFT,',
'    p_developer => :P100_DEVELOPER,',
'    p_standard_tracker_flag => :P100_SHOW_STANDARDS_TREE',
'  );'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_JSTREE'
,p_ajax_items_to_submit=>'P100_SHOW_CHANGES_ONLY_LEFT,P100_DEVELOPER,P100_SHOW_STANDARDS_TREE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_02=>'S'
,p_attribute_04=>'N'
,p_attribute_08=>'a-Icon'
,p_attribute_09=>'icon-tree-folder'
,p_attribute_10=>'TITLE'
,p_attribute_11=>'LEVEL'
,p_attribute_12=>'ICON'
,p_attribute_15=>'STATUS'
,p_attribute_20=>'VALUE'
,p_attribute_23=>'LEVEL'
,p_attribute_24=>'LINK'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(35419828859879405)
,p_plug_name=>'Details'
,p_region_name=>'DETAILS'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple:margin-right-lg'
,p_plug_template=>wwv_flow_api.id(32673186870653965)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-max-height'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(32768852745655926)
,p_name=>'Debug'
,p_region_name=>'PROCEDURE'
,p_parent_plug_id=>wwv_flow_api.id(35419828859879405)
,p_template=>wwv_flow_api.id(32666307465653962)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'AM_TREE_PROCEDURES'
,p_query_where=>'call_id = :P100_CALL_ID'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P100_CALL_ID'
,p_query_row_template=>wwv_flow_api.id(32698236901653982)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32768902860655927)
,p_query_column_id=>1
,p_column_alias=>'CALL_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Call Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32769003831655928)
,p_query_column_id=>2
,p_column_alias=>'PARENT_CALL_ID'
,p_column_display_sequence=>20
,p_column_heading=>'Parent Call Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32769853334655936)
,p_query_column_id=>3
,p_column_alias=>'PARENT_APEX_ID'
,p_column_display_sequence=>100
,p_column_heading=>'Parent Apex Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32769175557655929)
,p_query_column_id=>4
,p_column_alias=>'EXPORT_ID'
,p_column_display_sequence=>30
,p_column_heading=>'Export Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32769274575655930)
,p_query_column_id=>5
,p_column_alias=>'PROCEDURE_NAME'
,p_column_display_sequence=>40
,p_column_heading=>'Procedure Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32769292888655931)
,p_query_column_id=>6
,p_column_alias=>'SCOPE'
,p_column_display_sequence=>50
,p_column_heading=>'Scope'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32769412720655932)
,p_query_column_id=>7
,p_column_alias=>'BEGIN_LINE_NO'
,p_column_display_sequence=>60
,p_column_heading=>'Begin Line No'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32769538625655933)
,p_query_column_id=>8
,p_column_alias=>'END_LINE_NO'
,p_column_display_sequence=>70
,p_column_heading=>'End Line No'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(354756486581123419)
,p_query_column_id=>9
,p_column_alias=>'POS_FROM'
,p_column_display_sequence=>130
,p_column_heading=>'Pos From'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(354756521902123420)
,p_query_column_id=>10
,p_column_alias=>'POS_TO'
,p_column_display_sequence=>140
,p_column_heading=>'Pos To'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32769658389655934)
,p_query_column_id=>11
,p_column_alias=>'SORT_VALUE'
,p_column_display_sequence=>80
,p_column_heading=>'Sort Value'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32769909015655937)
,p_query_column_id=>12
,p_column_alias=>'DISPLAY_VALUE'
,p_column_display_sequence=>110
,p_column_heading=>'Display Value'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32769782881655935)
,p_query_column_id=>13
,p_column_alias=>'APEX_ID'
,p_column_display_sequence=>90
,p_column_heading=>'Apex Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39826089598452794)
,p_query_column_id=>14
,p_column_alias=>'CHANGE_FLAG'
,p_column_display_sequence=>120
,p_column_heading=>'Change Flag'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(35419978486879406)
,p_plug_name=>'Parameters'
,p_region_name=>'PARAMETERS'
,p_parent_plug_id=>wwv_flow_api.id(35419828859879405)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(32664463708653960)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       case ',
'        when change_flag = ''I'' then',
'          ''<span class="a-Icon fa fa-plus-square"></span>''',
'        when change_flag = ''D'' then',
'          ''<span class="a-Icon fa fa-minus-square"></span>''',
'        when change_flag = ''P'' then',
'         ''<span class="a-Icon fa fa-exclamation-triangle"></span>''',
'        else',
'          ''<span class="a-Icon fa fa-info-square-o"></span>''',
'       end icon,',
'       case ',
'        when change_flag = ''I'' then',
'          ''<div class="parameter_change_I">''||APEX_ESCAPE.HTML(r_display_data)||''</div>''',
'        when change_flag = ''D'' then',
'          ''<div class="parameter_change_D">''||APEX_ESCAPE.HTML(l_display_data)||''</div>''',
'        when change_flag = ''P'' then',
'         ''<div class="parameter_change_P"><div class="parameter_val_change_FROM">''||APEX_ESCAPE.HTML(l_display_data)||''</div> -> <div class="parameter_val_change_TO">''||APEX_ESCAPE.HTML(r_display_data)||''</div></div>''',
'        else',
'          APEX_ESCAPE.HTML(l_display_data)',
'        end display_data,',
'        case ',
'          when change_flag = ''I'' then',
'            ''<div class="parameter_change_I">''||APEX_ESCAPE.HTML(parameter_name)||''</div>''',
'          when change_flag = ''D'' then',
'            ''<div class="parameter_change_D">''||APEX_ESCAPE.HTML(parameter_name)||''</div>''',
'          when change_flag = ''P'' then',
'            ''<div class="parameter_change_P">''||APEX_ESCAPE.HTML(parameter_name)||''</div>''',
'          else',
'            APEX_ESCAPE.HTML(parameter_name)',
'        end parameter_name,',
'        parameter_name as parameter_name_,',
'        parameter_type,',
'        change_flag,',
'        begin_line_no,',
'        r_call_id,',
'        l_call_id',
'from (',
'select case ',
'        when l.parameter_name is null then',
'          ''I''',
'        when r.parameter_name is null then',
'          ''D''  ',
unistr('        when (nvl(l.data,''?\00C4\00D6?\00DC&%&%$&%$&%\00D6?'') != nvl(r.data,''?\00C4\00D6?\00DC&%&%$&%$&%\00D6?'')) or '),
'              dbms_lob.compare(nvl(l.data_clob,''Null''),nvl(r.data_clob,''Null'')) = -1',
'        then ''P''',
'        else ''''',
'        end change_flag,',
'        l.display_data as l_display_data,',
'        r.display_data as r_display_data,',
'        nvl(l.parameter_name,r.parameter_name) as parameter_name,',
'        nvl(l.parameter_type,r.parameter_type) as parameter_type,',
'        nvl(l.begin_line_no,r.begin_line_no) as begin_line_no,',
'        l.call_id as l_call_id,',
'        r.call_id as r_call_id        ',
'      from (',
'      select pr.call_id,',
'             pr.apex_id,',
'             par.parameter_name,',
'             par.display_data,',
'             par.parameter_type,',
'             data_clob,',
'             data,',
'             par.begin_line_no',
'      from am_tree_procedures pr, ',
'           am_tree_parameters par  ',
'      where pr.export_id = :P100_LEFT_EXPORT_ID',
'        and par.export_id = :P100_LEFT_EXPORT_ID',
'        and pr.call_id = par.call_id',
'        and pr.apex_id = :P100_APEX_ID',
'      ) l full outer join ',
'      (',
'      select pr.call_id,',
'             pr.apex_id,',
'             par.parameter_name,',
'             par.display_data,',
'             par.parameter_type,',
'             data_clob,',
'             data,',
'             par.begin_line_no',
'      from am_tree_procedures pr, ',
'           am_tree_parameters par  ',
'      where pr.export_id = :P100_RIGHT_EXPORT_ID',
'        and par.export_id = :P100_RIGHT_EXPORT_ID',
'        and pr.call_id = par.call_id',
'        and pr.apex_id = :P100_APEX_ID',
'      ) r on l.parameter_name = r.parameter_name',
')       ',
'where (change_flag is not null and nvl(:P100_SHOW_CHANGES_ONLY_PAR,''N'')=''Y'') or nvl(:P100_SHOW_CHANGES_ONLY_PAR,''N'') !=''Y'''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P100_APEX_ID,P100_SHOW_CHANGES_ONLY_PAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Parameters'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(35420003741879407)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF:RTF:EMAIL'
,p_owner=>'GPV'
,p_internal_uid=>22148115639083320
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(35420303421879410)
,p_db_column_name=>'PARAMETER_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Parameter Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(35420653930879413)
,p_db_column_name=>'DISPLAY_DATA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Display Data'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(35420928487879416)
,p_db_column_name=>'PARAMETER_TYPE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Parameter Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39826470509452797)
,p_db_column_name=>'CHANGE_FLAG'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Change Flag'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39826578333452798)
,p_db_column_name=>'BEGIN_LINE_NO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Begin Line No'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39826688702452800)
,p_db_column_name=>'ICON'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Icon'
,p_column_link=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:200:P200_LEFT_CALL_ID,P200_RIGHT_CALL_ID,P200_LEFT_EXPORT_ID,P200_RIGHT_EXPORT_ID,P200_PARAMETER_NAME:#L_CALL_ID#,#R_CALL_ID#,&P100_LEFT_EXPORT_ID.,&P100_RIGHT_EXPORT_ID.,#PARAMETER_NAME_#'
,p_column_linktext=>'#ICON#'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39826987956452802)
,p_db_column_name=>'R_CALL_ID'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'R Call Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39827071365452803)
,p_db_column_name=>'L_CALL_ID'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'L Call Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39827666867452809)
,p_db_column_name=>'PARAMETER_NAME_'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Parameter Name'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(35910339416114390)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'226385'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ICON:PARAMETER_NAME:DISPLAY_DATA:'
,p_sort_column_1=>'BEGIN_LINE_NO'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(29186500845362578)
,p_report_id=>wwv_flow_api.id(35910339416114390)
,p_name=>'Deleted'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'CHANGE_FLAG'
,p_operator=>'='
,p_expr=>'D'
,p_condition_sql=>' (case when ("CHANGE_FLAG" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''D''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#FFD6D2'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(29186923270362579)
,p_report_id=>wwv_flow_api.id(35910339416114390)
,p_name=>'Inserted'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'CHANGE_FLAG'
,p_operator=>'='
,p_expr=>'I'
,p_condition_sql=>' (case when ("CHANGE_FLAG" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''I''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#D0F1CC'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(29187371901362579)
,p_report_id=>wwv_flow_api.id(35910339416114390)
,p_name=>'Changed'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'CHANGE_FLAG'
,p_operator=>'='
,p_expr=>'P'
,p_condition_sql=>' (case when ("CHANGE_FLAG" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''P''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#FFF380'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41010262940708808)
,p_plug_name=>'History'
,p_parent_plug_id=>wwv_flow_api.id(35419828859879405)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(32664463708653960)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select developer,',
'       updated,',
'       audit_action as action',
'from apex_developer_audit_log',
'where flow_table_pk = :P100_APEX_ID',
'  and updated between :P100_DATE_FROM and :P100_DATE_TO'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P100_APEX_ID,P100_DATE_FROM,P100_DATE_TO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_required_role=>wwv_flow_api.id(45787980749205252)
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'History'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(41010354457708809)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF:RTF:EMAIL'
,p_owner=>'GPV'
,p_internal_uid=>27738466354912722
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41010417531708810)
,p_db_column_name=>'DEVELOPER'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Developer'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41010560428708811)
,p_db_column_name=>'UPDATED'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41010677202708812)
,p_db_column_name=>'ACTION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Action'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(41035123806286458)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'277633'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DEVELOPER:UPDATED:ACTION'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(72972449381665011)
,p_plug_name=>'Standards Tracker'
,p_parent_plug_id=>wwv_flow_api.id(35419828859879405)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(32666307465653962)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_COM.FOS.PLSQL_DYNAMIC_CONTENT'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P310_SOURCE = ''D'' and :P310_RUN_STANDARTD_TRACKER = ''Y'''
,p_plug_display_when_cond2=>'SQL'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'sys.htp.p(am_standard_tracker.get_report(',
'   p_apex_id => :P100_APEX_ID,',
'   p_application_id => :P310_APP_ID_DESTINATION,',
'   p_showonly => :P100_SHOW_STANDARDS',
'));'))
,p_attribute_02=>'P100_SHOW_STANDARDS,P100_APEX_ID,P310_APP_ID_DESTINATION'
,p_attribute_05=>'ON_REGION_WITH_OVERLAY'
,p_attribute_11=>'Y'
,p_attribute_12=>'Y'
,p_attribute_14=>'htp'
,p_attribute_15=>'substitute-values'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40819334176993433)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(35419978486879406)
,p_button_name=>'SRC'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(32728906862654015)
,p_button_image_alt=>'Comapre Source'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:250:&SESSION.::&DEBUG.:RR,250::'
,p_icon_css_classes=>'fa-arrows-h'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41009477404708800)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(35419978486879406)
,p_button_name=>'DIFF_PAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(32728821063654015)
,p_button_image_alt=>'Diff Only'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(35421837491879425)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(35006156750072667)
,p_button_name=>'CHANGES_ONLY'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(32728821063654015)
,p_button_image_alt=>'Diff Only'
,p_button_position=>'RIGHT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(35006502715072671)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(35006156750072667)
,p_button_name=>'CONTRACT_ALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(32728906862654015)
,p_button_image_alt=>'Collapse All'
,p_button_position=>'RIGHT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-minus-circle-o'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(35007858071072682)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(35006156750072667)
,p_button_name=>'EXPAND_ALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(32728906862654015)
,p_button_image_alt=>'Expand All'
,p_button_position=>'RIGHT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-circle-o'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35200883543628888)
,p_name=>'P100_CALL_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(35006156750072667)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35201738672628897)
,p_name=>'P100_LEFT_EXPORT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(35006156750072667)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35421728288879424)
,p_name=>'P100_RIGHT_EXPORT_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(35006156750072667)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35421959183879426)
,p_name=>'P100_SHOW_CHANGES_ONLY_LEFT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(35006156750072667)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35422365250879430)
,p_name=>'P100_APEX_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(35006156750072667)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41009520293708801)
,p_name=>'P100_SHOW_CHANGES_ONLY_PAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(35419978486879406)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41010793550708814)
,p_name=>'P100_DATE_FROM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(41010262940708808)
,p_prompt=>'Date From'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(32727728396654011)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'both'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41010895212708815)
,p_name=>'P100_DATE_TO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(41010262940708808)
,p_prompt=>'Date From'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(32727728396654011)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'both'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41011190307708818)
,p_name=>'P100_SHOW_STANDARDS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(72972449381665011)
,p_prompt=>'Show Standards'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Only Failures;F,Only Passes;P,False Negatives;N'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(32727728396654011)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45244737915360221)
,p_name=>'P100_DEVELOPER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(35006156750072667)
,p_prompt=>'Filter by Developer'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct developer as id,',
'                developer as disp',
'from apex_developer_audit_log',
'where application_id = :P310_APP_ID_DESTINATION',
'  and updated between :P100_DATE_FROM and :P100_DATE_TO',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>' '
,p_lov_cascade_parent_items=>'P100_DATE_FROM ,P100_DATE_TO'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(32727728396654011)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_security_scheme=>wwv_flow_api.id(45787980749205252)
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45244803459360222)
,p_name=>'P100_SHOW_STANDARDS_TREE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(35006156750072667)
,p_prompt=>'Filter by Standards'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:Only Failures;F,Only Passes;P,False Negatives;N,All;A'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_display_when=>'P310_RUN_STANDARTD_TRACKER'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(32727728396654011)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(41009624937708802)
,p_computation_sequence=>20
,p_computation_item=>'P100_SHOW_CHANGES_ONLY_PAR'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation_error_message=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(41012899854708835)
,p_computation_sequence=>30
,p_computation_item=>'P100_SHOW_STANDARDS'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'F'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(45245789471360232)
,p_computation_sequence=>40
,p_computation_item=>'P100_SHOW_CHANGES_ONLY_LEFT'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(35006923839072679)
,p_name=>'CONTRACT_ALL'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(35006502715072671)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(35007486219072681)
,p_event_id=>wwv_flow_api.id(35006923839072679)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_TREE_COLLAPSE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(35006156750072667)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(35008231650072683)
,p_name=>'EXPAND_ALL'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(35007858071072682)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(35008741632072683)
,p_event_id=>wwv_flow_api.id(35008231650072683)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_TREE_EXPAND'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(35006156750072667)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(35422807410879435)
,p_name=>'Refresh Regions'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P100_CALL_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(354757334738123428)
,p_event_id=>wwv_flow_api.id(35422807410879435)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P100_CALL_ID,P100_APEX_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
end;
/
begin
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39825488614452788)
,p_event_id=>wwv_flow_api.id(35422807410879435)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(35419978486879406)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41010707795708813)
,p_event_id=>wwv_flow_api.id(35422807410879435)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(41010262940708808)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41012873865708834)
,p_event_id=>wwv_flow_api.id(35422807410879435)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(72972449381665011)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(354756770478123422)
,p_event_id=>wwv_flow_api.id(35422807410879435)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(32768852745655926)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(35421999437879427)
,p_name=>'Changes Only'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(35421837491879425)
,p_condition_element=>'P100_SHOW_CHANGES_ONLY_LEFT'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45244992296360224)
,p_event_id=>wwv_flow_api.id(35421999437879427)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(35421837491879425)
,p_attribute_01=>'t-Button--hot'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(35422120725879428)
,p_event_id=>wwv_flow_api.id(35421999437879427)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P100_SHOW_CHANGES_ONLY_LEFT := ''Y'';',
''))
,p_attribute_03=>'P100_SHOW_CHANGES_ONLY_LEFT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45245210162360226)
,p_event_id=>wwv_flow_api.id(35421999437879427)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REMOVE_CLASS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(35421837491879425)
,p_attribute_01=>'t-Button--hot'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45245679293360230)
,p_event_id=>wwv_flow_api.id(35421999437879427)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P100_SHOW_CHANGES_ONLY_LEFT := ''N'';',
''))
,p_attribute_03=>'P100_SHOW_CHANGES_ONLY_LEFT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45245953322360233)
,p_event_id=>wwv_flow_api.id(35421999437879427)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P100_DEVELOPER,P100_SHOW_STANDARDS_TREE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(35422267708879429)
,p_event_id=>wwv_flow_api.id(35421999437879427)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(35006156750072667)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45246115197360235)
,p_event_id=>wwv_flow_api.id(35421999437879427)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P100_DEVELOPER,P100_SHOW_STANDARDS_TREE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45245714736360231)
,p_event_id=>wwv_flow_api.id(35421999437879427)
,p_event_result=>'FALSE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(35006156750072667)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41009717407708803)
,p_name=>'Changes Only Parameters'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(41009477404708800)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41009853634708804)
,p_event_id=>wwv_flow_api.id(41009717407708803)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:P100_SHOW_CHANGES_ONLY_PAR,''N'') = ''Y'' then',
' :P100_SHOW_CHANGES_ONLY_PAR:= ''N'';',
'else',
' :P100_SHOW_CHANGES_ONLY_PAR:= ''Y'';',
'end if;'))
,p_attribute_02=>'P100_SHOW_CHANGES_ONLY_PAR'
,p_attribute_03=>'P100_SHOW_CHANGES_ONLY_PAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41009937129708805)
,p_event_id=>wwv_flow_api.id(41009717407708803)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(35419978486879406)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41013018289708836)
,p_name=>'Change Show Standards'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P100_SHOW_STANDARDS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41013101789708837)
,p_event_id=>wwv_flow_api.id(41013018289708836)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(72972449381665011)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(45246211970360236)
,p_name=>'Hide Filters'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45246307899360237)
,p_event_id=>wwv_flow_api.id(45246211970360236)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P100_DEVELOPER,P100_SHOW_STANDARDS_TREE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(45691826261354088)
,p_name=>'Filter Tree'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P100_SHOW_STANDARDS_TREE,P100_DEVELOPER'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45691925099354089)
,p_event_id=>wwv_flow_api.id(45691826261354088)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(35006156750072667)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41011032889708816)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Fill Dates'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' v_left_export_date date;',
' v_right_export_date date; ',
'begin',
' if :P300_SOURCE = ''D''  then',
'   v_left_export_date := sysdate;',
' elsif :P300_SOURCE = ''B'' then',
'   v_left_export_date :=  am_app.get_backup_date(:P300_BACKUP_ID_SOURCE);',
' else',
'   v_left_export_date := am_utils.get_export_date(:P100_LEFT_EXPORT_ID);',
' end if;',
' if :P310_SOURCE =  ''D'' then',
'   v_right_export_date := sysdate;',
' else  ',
'   v_right_export_date := am_utils.get_export_date(:P100_RIGHT_EXPORT_ID);',
' end if;',
'',
' :P100_DATE_FROM := least(',
'  nvl(v_left_export_date,v_right_export_date),',
'  nvl(v_right_export_date,v_left_export_date)',
' );   ',
' ',
' :P100_DATE_TO := greatest(',
'  nvl(v_left_export_date,v_right_export_date),',
'  nvl(v_right_export_date,v_left_export_date)',
' );   ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00200
begin
wwv_flow_api.create_page(
 p_id=>200
,p_user_interface_id=>wwv_flow_api.id(32751489126654074)
,p_name=>'Compare'
,p_alias=>'TEXT-COMAPRE'
,p_page_mode=>'MODAL'
,p_step_title=>'Compare'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'800'
,p_dialog_width=>'70%'
,p_last_updated_by=>'PAVEL'
,p_last_upd_yyyymmddhh24miss=>'20210308171225'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39826845036452801)
,p_plug_name=>'Compare'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(32666307465653962)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VALUE_EDIT,',
'       VALUE_DIFF,',
'       :P200_LANGUAGE as LANGUAGE',
'from (              ',
'select (',
'      select case ',
'              when data is not null ',
'              then to_clob(data)',
'              else data_clob',
'             end val',
'      from am_tree_parameters par  ',
'      where par.export_id = :P200_LEFT_EXPORT_ID',
'        and par.call_id = :P200_LEFT_CALL_ID        ',
'        and par.parameter_name = :P200_PARAMETER_NAME',
'       ) VALUE_EDIT,',
' (',
'      select case ',
'              when data is not null ',
'              then to_clob(data)',
'              else data_clob',
'             end val',
'      from am_tree_parameters par  ',
'      where par.export_id = :P200_RIGHT_EXPORT_ID',
'        and par.call_id = :P200_RIGHT_CALL_ID        ',
'        and par.parameter_name = :P200_PARAMETER_NAME',
'       ) VALUE_DIFF',
'from dual       ',
')',
'       ',
'       ',
'',
''))
,p_plug_source_type=>'PLUGIN_RW.APEX.VS.MONACO.EDITOR'
,p_ajax_items_to_submit=>'P200_LANGUAGE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'70vh'
,p_attribute_02=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VR_CLOB       CLOB := :CLOB; ',
'    /* You need to use V(''P1_COL_NAME'') because :P1_COL_NAME is not supported here */',
'    VR_COL_NAME   VARCHAR2(200) := NVL(',
'        V(''P1_COL_NAME''),',
'        ''EDITOR_CODE_COLLECTION''',
'    );',
'BEGIN',
'    BEGIN',
'        APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => VR_COL_NAME);',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            NULL;',
'    END;',
'',
'    APEX_COLLECTION.ADD_MEMBER(',
'        P_COLLECTION_NAME   => VR_COL_NAME,',
'        P_CLOB001           => VR_CLOB',
'    );',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'        APEX_DEBUG.ERROR(DBMS_UTILITY.FORMAT_ERROR_STACK);',
'END;'))
,p_attribute_03=>'plaintext'
,p_attribute_04=>'vs'
,p_attribute_05=>'undo:redo:search:diff'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39827722400452810)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(32638950348653944)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39827875680452811)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(39827722400452810)
,p_button_name=>'Close'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(32728821063654015)
,p_button_image_alt=>'Close'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(39828962375452822)
,p_branch_name=>'Refresh'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.:REFRESH:&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'REFRESH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39827558401452808)
,p_name=>'P200_PARAMETER_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(39826845036452801)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39828495543452818)
,p_name=>'P200_LANGUAGE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(39826845036452801)
,p_prompt=>'Language'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_LANGUAGES'
,p_lov=>'.'||wwv_flow_api.id(40753696564152529)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(32727728396654011)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40732641862847055)
,p_name=>'P200_LEFT_EXPORT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(39826845036452801)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40733084609847058)
,p_name=>'P200_RIGHT_EXPORT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(39826845036452801)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40733483557847058)
,p_name=>'P200_RIGHT_CALL_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(39826845036452801)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40733829555847058)
,p_name=>'P200_LEFT_CALL_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(39826845036452801)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(39828668968452819)
,p_computation_sequence=>10
,p_computation_item=>'P200_LANGUAGE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select am_utils.detect_language(nvl(VALUE_EDIT,VALUE_DIFF)) as LANGUAGE',
'from (              ',
'select (',
'      select case ',
'              when data is not null ',
'              then substr(data,1,100)',
'              else DBMS_LOB.SUBSTR(data_clob,100,1)',
'             end val',
'      from am_tree_parameters par  ',
'      where par.export_id = :P200_LEFT_EXPORT_ID',
'        and par.call_id = :P200_LEFT_CALL_ID        ',
'        and par.parameter_name = :P200_PARAMETER_NAME',
'       ) VALUE_EDIT,',
' (',
'      select case ',
'              when data is not null ',
'              then substr(data,1,100)',
'              else  DBMS_LOB.SUBSTR(data_clob,100,1)',
'             end val',
'      from am_tree_parameters par  ',
'      where par.export_id = :P200_RIGHT_EXPORT_ID',
'        and par.call_id = :P200_RIGHT_CALL_ID        ',
'        and par.parameter_name = :P200_PARAMETER_NAME',
'       ) VALUE_DIFF',
'from dual       ',
')',
'       ',
'       ',
'',
''))
,p_compute_when=>'REFRESH'
,p_compute_when_type=>'REQUEST_NOT_EQUAL_CONDITION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39827942003452812)
,p_name=>'Close Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(39827875680452811)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39828071906452813)
,p_event_id=>wwv_flow_api.id(39827942003452812)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39828738157452820)
,p_name=>'Refresh'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P200_LANGUAGE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39828862729452821)
,p_event_id=>wwv_flow_api.id(39828738157452820)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'REFRESH'
,p_attribute_02=>'Y'
);
end;
/
prompt --application/pages/page_00250
begin
wwv_flow_api.create_page(
 p_id=>250
,p_user_interface_id=>wwv_flow_api.id(32751489126654074)
,p_name=>'Compare Source'
,p_alias=>'COMPARE-SOURCE'
,p_page_mode=>'MODAL'
,p_step_title=>'Compare Source'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'800'
,p_dialog_width=>'86%'
,p_last_updated_by=>'PAVEL'
,p_last_upd_yyyymmddhh24miss=>'20210331115620'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40819436123993434)
,p_plug_name=>'Compare'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(32666307465653962)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'   am_app.get_source(',
'     p_call_id => :P100_CALL_ID,',
'     p_export_id => :P100_LEFT_EXPORT_ID',
'   ) AS VALUE_EDIT,',
'   am_app.get_source(',
'     p_call_id => :P250_RIGHT_CALL_ID,',
'     p_export_id => :P100_RIGHT_EXPORT_ID',
'   ) AS VALUE_DIFF,   ',
'   ''sql'' AS LANGUAGE',
'FROM DUAL'))
,p_plug_source_type=>'PLUGIN_RW.APEX.VS.MONACO.EDITOR'
,p_ajax_items_to_submit=>'P100_CALL_ID,P250_RIGHT_CALL_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'620px'
,p_attribute_02=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VR_CLOB       CLOB := :CLOB; ',
'    /* You need to use V(''P1_COL_NAME'') because :P1_COL_NAME is not supported here */',
'    VR_COL_NAME   VARCHAR2(200) := NVL(',
'        V(''P1_COL_NAME''),',
'        ''EDITOR_CODE_COLLECTION''',
'    );',
'BEGIN',
'    BEGIN',
'        APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => VR_COL_NAME);',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            NULL;',
'    END;',
'',
'    APEX_COLLECTION.ADD_MEMBER(',
'        P_COLLECTION_NAME   => VR_COL_NAME,',
'        P_CLOB001           => VR_CLOB',
'    );',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'        APEX_DEBUG.ERROR(DBMS_UTILITY.FORMAT_ERROR_STACK);',
'END;'))
,p_attribute_03=>'sql'
,p_attribute_04=>'vs'
,p_attribute_05=>'undo:redo:search:diff'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41009053225708796)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(32638950348653944)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41009101575708797)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(41009053225708796)
,p_button_name=>'CLOSE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(32728821063654015)
,p_button_image_alt=>'Close'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41008814649708794)
,p_name=>'P250_RIGHT_CALL_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(40819436123993434)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41009282726708798)
,p_name=>'Close Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(41009101575708797)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41009387766708799)
,p_event_id=>wwv_flow_api.id(41009282726708798)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41008576995708791)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Fill Variables'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'  select call_id',
'  into :P250_RIGHT_CALL_ID',
'  from am_tree_procedures',
'  where export_id = :P100_RIGHT_EXPORT_ID',
'    and apex_id = :P100_APEX_ID',
'    and rownum < 2;',
'exception',
'  when no_data_found then',
'    null;  ',
'END;  '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00300
begin
wwv_flow_api.create_page(
 p_id=>300
,p_user_interface_id=>wwv_flow_api.id(32751489126654074)
,p_name=>'Source App'
,p_alias=>'SOURCE_APP'
,p_page_mode=>'MODAL'
,p_step_title=>'Source Application'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(32632709957653935)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'600'
,p_last_updated_by=>'PAVEL'
,p_last_upd_yyyymmddhh24miss=>'20210331152330'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40767256382276412)
,p_plug_name=>'Wizard Progress'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(32637892721653943)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_list_id=>wwv_flow_api.id(40766725686276409)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(32725988739654007)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40767450328276412)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(32638950348653944)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67334203846942254)
,p_plug_name=>'Destination Application'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(32666307465653962)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40769378197276416)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(40767450328276412)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(32728821063654015)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40769639004276416)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(40767450328276412)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(32728906862654015)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(40771238601276419)
,p_branch_name=>'Go To Page 310'
,p_branch_action=>'f?p=&APP_ID.:310:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(40769639004276416)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39829621523452829)
,p_name=>'P300_SOURCE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(67334203846942254)
,p_item_default=>'F'
,p_prompt=>'Source'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'LOV_SOURCES'
,p_lov=>'.'||wwv_flow_api.id(47193978355588142)||'.'
,p_colspan=>12
,p_field_template=>wwv_flow_api.id(32727728396654011)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39829734020452830)
,p_name=>'P300_APP_ID_SOURCE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(67334203846942254)
,p_prompt=>'Application'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_APPLICATIONS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select application_id,',
'       application_id as app_id,',
'       application_name',
'from apex_applications',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(32727728396654011)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40779071212285522)
,p_name=>'P300_FILENAME_SOURCE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(67334203846942254)
,p_display_as=>'NATIVE_FILE'
,p_cSize=>100
,p_cMaxlength=>1000
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_12=>'DROPZONE_INLINE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40814813935993388)
,p_name=>'P300_PUBLIC_REPORTS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(67334203846942254)
,p_item_default=>'Y'
,p_prompt=>'Include Public Reports'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_column=>3
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(32727728396654011)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'APPLICATION'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40815280621993392)
,p_name=>'P300_PRIVATE_REPORTS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(67334203846942254)
,p_item_default=>'N'
,p_prompt=>'Include Private Reports'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(32727728396654011)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'APPLICATION'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40815318050993393)
,p_name=>'P300_REPORT_SUBSCRIPTIONS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(67334203846942254)
,p_item_default=>'N'
,p_prompt=>'Include Report Subscriptions'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_column=>3
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(32727728396654011)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'APPLICATION'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40815408091993394)
,p_name=>'P300_TRANSLATION'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(67334203846942254)
,p_item_default=>'Y'
,p_prompt=>'Include Application Translation'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(32727728396654011)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'APPLICATION'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40815587880993395)
,p_name=>'P300_COMMENTS'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(67334203846942254)
,p_item_default=>'Y'
,p_prompt=>'Include Developer Comments '
,p_display_as=>'NATIVE_YES_NO'
,p_grid_column=>3
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(32727728396654011)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'APPLICATION'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40815657554993396)
,p_name=>'P300_ORIGINAL_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(67334203846942254)
,p_item_default=>'N'
,p_prompt=>'Use Original ID''s'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(32727728396654011)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'APPLICATION'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45695374258354123)
,p_name=>'P300_APP_ID_SOURCE_BACKUP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(67334203846942254)
,p_prompt=>'Application'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_APPLICATIONS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select application_id,',
'       application_id as app_id,',
'       application_name',
'from apex_applications',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(32727728396654011)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45695416389354124)
,p_name=>'P300_BACKUP_ID_SOURCE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(67334203846942254)
,p_prompt=>'Backup'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select last_updated_on,',
'       id',
'from am_app_backups',
'where application_id = :P300_APP_ID_SOURCE_BACKUP',
'order by 1 desc'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P300_APP_ID_SOURCE_BACKUP'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(32727728396654011)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(354757627538123431)
,p_validation_name=>'Application Is Selected'
,p_validation_sequence=>10
,p_validation=>'P300_APP_ID_SOURCE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'File is not selected! '
,p_validation_condition=>'P300_SOURCE'
,p_validation_condition2=>'D'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(40769639004276416)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(354757406640123429)
,p_validation_name=>'Backup Is Selected'
,p_validation_sequence=>20
,p_validation=>'P300_BACKUP_ID_SOURCE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Backup is not selected! '
,p_validation_condition=>'P300_SOURCE'
,p_validation_condition2=>'B'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(40769639004276416)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(354757583489123430)
,p_validation_name=>'File Is Selected'
,p_validation_sequence=>30
,p_validation=>'P300_FILENAME_SOURCE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'File is not selected! '
,p_validation_condition=>'P300_SOURCE'
,p_validation_condition2=>'F'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(40769639004276416)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40769776531276416)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(40769378197276416)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40770543096276418)
,p_event_id=>wwv_flow_api.id(40769776531276416)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39830012180452833)
,p_name=>'Show Hide Items'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P300_SOURCE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39830280483452835)
,p_event_id=>wwv_flow_api.id(39830012180452833)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v("P300_SOURCE") === ''D'' ) {',
'  ["P300_APP_ID_SOURCE","P300_PUBLIC_REPORTS","P300_PRIVATE_REPORTS","P300_REPORT_SUBSCRIPTIONS","P300_TRANSLATION","P300_COMMENTS","P300_ORIGINAL_ID"].forEach(element => apex.item(element).show());',
'  $("#P300_FILENAME_SOURCE_GROUP").hide();',
'  ["P300_APP_ID_SOURCE_BACKUP","P300_BACKUP_ID_SOURCE"].forEach(element => apex.item(element).hide());',
'}',
'if($v("P300_SOURCE") === ''F'' ) {',
'  ["P300_APP_ID_SOURCE","P300_PUBLIC_REPORTS","P300_PRIVATE_REPORTS","P300_REPORT_SUBSCRIPTIONS","P300_TRANSLATION","P300_COMMENTS","P300_ORIGINAL_ID"].forEach(element => apex.item(element).hide());',
'  $("#P300_FILENAME_SOURCE_GROUP").show();',
'  ["P300_APP_ID_SOURCE_BACKUP","P300_BACKUP_ID_SOURCE"].forEach(element => apex.item(element).hide());',
'}',
'if($v("P300_SOURCE") === ''B'' ) {',
'  ["P300_APP_ID_SOURCE","P300_PUBLIC_REPORTS","P300_PRIVATE_REPORTS","P300_REPORT_SUBSCRIPTIONS","P300_TRANSLATION","P300_COMMENTS","P300_ORIGINAL_ID"].forEach(element => apex.item(element).hide());',
'  $("#P300_FILENAME_SOURCE_GROUP").hide();',
'  ["P300_APP_ID_SOURCE_BACKUP","P300_BACKUP_ID_SOURCE"].forEach(element => apex.item(element).show());',
'}',
'',
''))
);
end;
/
prompt --application/pages/page_00310
begin
wwv_flow_api.create_page(
 p_id=>310
,p_user_interface_id=>wwv_flow_api.id(32751489126654074)
,p_name=>'Destination App'
,p_alias=>'DESTINATION-APP'
,p_page_mode=>'MODAL'
,p_step_title=>'Destination Application'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var customSpinner;'
,p_step_template=>wwv_flow_api.id(32632709957653935)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'600'
,p_last_updated_by=>'PAVEL'
,p_last_upd_yyyymmddhh24miss=>'20210331153021'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40771948214276419)
,p_plug_name=>'Wizard Progress'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(32637892721653943)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_list_id=>wwv_flow_api.id(40766725686276409)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(32725988739654007)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40772167630276419)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(32638950348653944)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94897481157782333)
,p_plug_name=>'Source Application'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(32666307465653962)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40774070689276421)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(40772167630276419)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(32728821063654015)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40774154278276421)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(40772167630276419)
,p_button_name=>'FINISH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(32728821063654015)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Finish'
,p_button_position=>'REGION_TEMPLATE_NEXT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40774215384276421)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(40772167630276419)
,p_button_name=>'PREVIOUS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(32728186871654012)
,p_button_image_alt=>'Previous'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(40816014509993400)
,p_branch_name=>'Go To Processing'
,p_branch_action=>'f?p=&APP_ID.:320:&SESSION.::&DEBUG.:RR,::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(40775933641276422)
,p_branch_action=>'f?p=&APP_ID.:300:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(40774215384276421)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40836281618636180)
,p_name=>'P310_SOURCE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(94897481157782333)
,p_item_default=>'D'
,p_prompt=>'Source'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'LOV_SOURCES'
,p_lov=>'.'||wwv_flow_api.id(47193978355588142)||'.'
,p_colspan=>12
,p_field_template=>wwv_flow_api.id(32727728396654011)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40836675128636181)
,p_name=>'P310_FILENAME_DESTINATION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(94897481157782333)
,p_display_as=>'NATIVE_FILE'
,p_cSize=>100
,p_cMaxlength=>1000
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_12=>'DROPZONE_INLINE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40837052635636181)
,p_name=>'P310_APP_ID_DESTINATION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(94897481157782333)
,p_prompt=>'Application'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_APPLICATIONS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select application_id,',
'       application_id as app_id,',
'       application_name',
'from apex_applications',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(32727728396654011)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40837404989636182)
,p_name=>'P310_PUBLIC_REPORTS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(94897481157782333)
,p_item_default=>'Y'
,p_prompt=>'Include Public Reports'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(32727728396654011)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APPLICATION'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40837796369636182)
,p_name=>'P310_PRIVATE_REPORTS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(94897481157782333)
,p_item_default=>'N'
,p_prompt=>'Include Private Reports'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(32727728396654011)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'APPLICATION'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40838261828636182)
,p_name=>'P310_REPORT_SUBSCRIPTIONS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(94897481157782333)
,p_item_default=>'N'
,p_prompt=>'Include Report Subscriptions'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(32727728396654011)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'APPLICATION'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40838675732636182)
,p_name=>'P310_TRANSLATION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(94897481157782333)
,p_item_default=>'Y'
,p_prompt=>'Include Application Translation'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(32727728396654011)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'APPLICATION'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40839082619636183)
,p_name=>'P310_COMMENTS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(94897481157782333)
,p_item_default=>'Y'
,p_prompt=>'Include Developer Comments '
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(32727728396654011)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'APPLICATION'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40839396468636183)
,p_name=>'P310_ORIGINAL_ID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(94897481157782333)
,p_item_default=>'N'
,p_prompt=>'Use Original ID''s'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(32727728396654011)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'APPLICATION'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45242814262360202)
,p_name=>'P310_RUN_STANDARTD_TRACKER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(94897481157782333)
,p_item_default=>'Y'
,p_prompt=>'Run Standard Tracker'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(32727728396654011)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_security_scheme=>wwv_flow_api.id(45788697893332158)
,p_attribute_01=>'APPLICATION'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47377034555618771)
,p_name=>'P310_APP_ID_BACKUP_DESTINATION'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(94897481157782333)
,p_prompt=>'Application'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_APPLICATIONS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select application_id,',
'       application_id as app_id,',
'       application_name',
'from apex_applications',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(32727728396654011)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47377362079621716)
,p_name=>'P310_BACKUP_ID_DESTINATION'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(94897481157782333)
,p_prompt=>'Backup'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select last_updated_on,',
'       id',
'from am_app_backups',
'where application_id = :P310_APP_ID_BACKUP_DESTINATION',
'order by 1 desc'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P310_APP_ID_BACKUP_DESTINATION'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(32727728396654011)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(40933186075109311)
,p_validation_name=>'Apllication Is Selected'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(:P310_SOURCE = ''F'' and :P310_FILENAME_DESTINATION is not null) or (:P310_SOURCE = ''D'' and :P310_APP_ID_DESTINATION is not null)',
'or (:P310_SOURCE = ''B'' and :P310_BACKUP_ID_DESTINATION is not null)'))
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Application is not selected! '
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40774405661276421)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(40774070689276421)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40775234963276422)
,p_event_id=>wwv_flow_api.id(40774405661276421)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40843876758650313)
,p_name=>'Show Hide Items'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P310_SOURCE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40844706403650314)
,p_event_id=>wwv_flow_api.id(40843876758650313)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v("P310_SOURCE") === ''D'' ) {',
'  ["P310_APP_ID_DESTINATION","P310_PUBLIC_REPORTS","P310_PRIVATE_REPORTS","P310_REPORT_SUBSCRIPTIONS","P310_TRANSLATION","P310_COMMENTS","P310_ORIGINAL_ID"].forEach(element => apex.item(element).show());',
'  $("#P310_FILENAME_DESTINATION_GROUP").hide();',
'  ["P310_APP_ID_BACKUP_DESTINATION","P310_BACKUP_ID_DESTINATION"].forEach(element => apex.item(element).hide());',
'}',
'if($v("P310_SOURCE") === ''F'' ) {',
'  ["P310_APP_ID_DESTINATION","P310_PUBLIC_REPORTS","P310_PRIVATE_REPORTS","P310_REPORT_SUBSCRIPTIONS","P310_TRANSLATION","P310_COMMENTS","P310_ORIGINAL_ID"].forEach(element => apex.item(element).hide());',
'  $("#P310_FILENAME_DESTINATION_GROUP").show();',
'  ["P310_APP_ID_BACKUP_DESTINATION","P310_BACKUP_ID_DESTINATION"].forEach(element => apex.item(element).hide());',
'}',
'if($v("P310_SOURCE") === ''B'' ) {',
'  ["P310_APP_ID_DESTINATION","P310_PUBLIC_REPORTS","P310_PRIVATE_REPORTS","P310_REPORT_SUBSCRIPTIONS","P310_TRANSLATION","P310_COMMENTS","P310_ORIGINAL_ID"].forEach(element => apex.item(element).hide());',
'  $("#P310_FILENAME_DESTINATION_GROUP").hide();',
'  ["P310_APP_ID_BACKUP_DESTINATION","P310_BACKUP_ID_DESTINATION"].forEach(element => apex.item(element).show());',
'}',
'',
''))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(354757723952123432)
,p_process_sequence=>10
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Prefill App No'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P300_SOURCE = ''B'' then',
' :P310_APP_ID_DESTINATION := :P300_APP_ID_SOURCE_BACKUP;',
' :P310_APP_ID_BACKUP_DESTINATION := :P300_APP_ID_SOURCE_BACKUP;',
'END IF; '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00320
begin
wwv_flow_api.create_page(
 p_id=>320
,p_user_interface_id=>wwv_flow_api.id(32751489126654074)
,p_name=>'Processing'
,p_alias=>'PROCESSING'
,p_page_mode=>'MODAL'
,p_step_title=>'Processing'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var customSpinner;',
'',
'function msg_(msg) {',
'  $("#PROCESSING_MSG").text(msg);',
'};  '))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#PROCESSING_MSG {',
' width: 100%;',
' line-height: 150px; ',
' text-align: center; ',
' font-size: 28px; ',
' font-weight: bold;',
'}'))
,p_step_template=>wwv_flow_api.id(32632709957653935)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'400'
,p_last_updated_by=>'PAVEL'
,p_last_upd_yyyymmddhh24miss=>'20210330141215'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68388007895552436)
,p_plug_name=>'Wizard Progress'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(32637892721653943)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_list_id=>wwv_flow_api.id(40766725686276409)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(32725988739654007)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(122513540839058350)
,p_plug_name=>'Processing'
,p_region_name=>'PROCESSING'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(32666307465653962)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_source=>'<DIV id="PROCESSING_MSG"><DIV>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(40905252929072177)
,p_branch_name=>'Go To Comparsion Page'
,p_branch_action=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.:RR,100:P100_LEFT_EXPORT_ID,P100_RIGHT_EXPORT_ID:&P320_EXPORT_ID_DESTINATION.,&P320_EXPORT_ID_SOURCE.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40948346924222884)
,p_name=>'P320_EXPORT_ID_SOURCE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(122513540839058350)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40948590009224498)
,p_name=>'P320_EXPORT_ID_DESTINATION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(122513540839058350)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40922099788102505)
,p_name=>'Show Processing'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40818227096993422)
,p_event_id=>wwv_flow_api.id(40922099788102505)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'msg_("Clearing old data");'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40925041870102508)
,p_event_id=>wwv_flow_api.id(40922099788102505)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'am_utils.delete_tree_data;',
'commit;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40922539780102507)
,p_event_id=>wwv_flow_api.id(40922099788102505)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'customSpinner = apex.widget.waitPopup();',
'msg_("Importing Source Apllication");'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40923549560102507)
,p_event_id=>wwv_flow_api.id(40922099788102505)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P320_EXPORT_ID_SOURCE := am_comparsions_api.upload_export(',
'      p_source => :P300_SOURCE,',
'      p_filename =>:P300_FILENAME_SOURCE,',
'      p_app_id => :P300_APP_ID_SOURCE,',
'      p_public_reports => :P300_PUBLIC_REPORTS,',
'      p_private_reports => :P300_PRIVATE_REPORTS,',
'      p_report_subscriptions => :P300_REPORT_SUBSCRIPTIONS,',
'      p_translation => :P300_TRANSLATION,',
'      p_comments => :P300_COMMENTS,',
'      p_original_ids => :P300_ORIGINAL_ID,',
'      p_backup_id => :P300_BACKUP_ID_SOURCE',
'   );',
'   commit;'))
,p_attribute_03=>'P320_EXPORT_ID_SOURCE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40818066038993420)
,p_event_id=>wwv_flow_api.id(40922099788102505)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'msg_("Importing Desination Apllication");'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40924014516102508)
,p_event_id=>wwv_flow_api.id(40922099788102505)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P320_EXPORT_ID_DESTINATION := am_comparsions_api.upload_export(',
'      p_source => :P310_SOURCE,  ',
'      p_filename => :P310_FILENAME_DESTINATION,',
'      p_app_id => :P310_APP_ID_DESTINATION,',
'      p_public_reports => :P310_PUBLIC_REPORTS,',
'      p_private_reports => :P310_PRIVATE_REPORTS,',
'      p_report_subscriptions => :P310_REPORT_SUBSCRIPTIONS,',
'      p_translation => :P310_TRANSLATION,',
'      p_comments => :P310_COMMENTS,',
'      p_original_ids => :P310_ORIGINAL_ID,',
'      p_backup_id => :P310_BACKUP_ID_DESTINATION',
'   );',
'commit;'))
,p_attribute_03=>'P320_EXPORT_ID_DESTINATION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(354755774956123412)
,p_event_id=>wwv_flow_api.id(40922099788102505)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'msg_("Building Source Apllication Tree");'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(354755858028123413)
,p_event_id=>wwv_flow_api.id(40922099788102505)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'am_tree.fill_tree(:P320_EXPORT_ID_SOURCE);',
'commit;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40818428418993424)
,p_event_id=>wwv_flow_api.id(40922099788102505)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'msg_("Building Destination Apllication Tree");'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40926061447102509)
,p_event_id=>wwv_flow_api.id(40922099788102505)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'am_tree.fill_tree(:P320_EXPORT_ID_DESTINATION);',
'commit;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40818561097993425)
,p_event_id=>wwv_flow_api.id(40922099788102505)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'msg_("Compare Applications");'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40926564647102509)
,p_event_id=>wwv_flow_api.id(40922099788102505)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'am_compare.compare_trees(',
'      p_left_export_id => :P320_EXPORT_ID_DESTINATION,',
'      p_right_export_id => :P320_EXPORT_ID_SOURCE',
'   );',
'commit;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45242585836360199)
,p_event_id=>wwv_flow_api.id(40922099788102505)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'msg_("Calculate Standard Tracker");'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45242344183360197)
,p_event_id=>wwv_flow_api.id(40922099788102505)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P310_APP_ID_DESTINATION is not null and :P310_RUN_STANDARTD_TRACKER = ''Y'' then',
'  am_standard_tracker.prepare_results(',
'    p_application_id => :P310_APP_ID_DESTINATION ',
'  );',
'commit;',
'end if;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45242448858360198)
,p_event_id=>wwv_flow_api.id(40922099788102505)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'customSpinner.remove();'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40927517198102509)
,p_event_id=>wwv_flow_api.id(40922099788102505)
,p_event_result=>'TRUE'
,p_action_sequence=>160
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_api.create_page(
 p_id=>9999
,p_user_interface_id=>wwv_flow_api.id(32751489126654074)
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'APEX MERGE - Sign In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(32618020914653926)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'GPV'
,p_last_upd_yyyymmddhh24miss=>'20201211141046'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32755529161654148)
,p_plug_name=>'APEX MERGE'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(32665050822653961)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32760224617654168)
,p_plug_name=>'Language Selector'
,p_parent_plug_id=>wwv_flow_api.id(32755529161654148)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(32637892721653943)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>'apex_lang.emit_language_selector_list;'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(32758329107654164)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(32755529161654148)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(32728821063654015)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32755901349654153)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(32755529161654148)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32727486961654009)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32756334903654154)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(32755529161654148)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32727486961654009)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32757460843654158)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(32755529161654148)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOGIN_REMEMBER_USERNAME'
,p_lov=>'.'||wwv_flow_api.id(32756605899654154)||'.'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(32727486961654009)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If you select this checkbox, the application will save your username in a persistent browser cookie named "LOGIN_USERNAME_COOKIE".',
'When you go to the login page the next time,',
'the username field will be automatically populated with this value.',
'</p>',
'<p>',
'If you deselect this checkbox and your username is already saved in the cookie,',
'the application will overwrite it with an empty value.',
'You can also use your browser''s developer tools to completely remove the cookie.',
'</p>'))
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(32759116010654167)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P9999_USERNAME),',
'    p_consent  => :P9999_REMEMBER = ''Y'' );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(32758771999654167)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P9999_USERNAME,',
'    p_password => :P9999_PASSWORD );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(32759949930654168)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(32759510888654167)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(45789309708344483)
,p_deinstall_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'drop package am_api_utils;',
'drop package am_app;',
'drop package am_compare;',
'drop package am_comparsions_api;',
'drop package am_hierarchy;',
'drop package am_standard_tracker;',
'drop package am_tree;',
'drop package am_utils;',
'',
'drop table am_api_procedures CASCADE CONSTRAINTS;',
'drop table am_execution_points CASCADE CONSTRAINTS;',
'drop table am_exports CASCADE CONSTRAINTS;',
'drop table am_lines CASCADE CONSTRAINTS;',
'drop table am_template_opt_group CASCADE CONSTRAINTS;',
'drop table am_template_options CASCADE CONSTRAINTS;',
'drop table am_templates CASCADE CONSTRAINTS;',
'drop table am_templates_display_points CASCADE CONSTRAINTS;',
'drop table am_themes CASCADE CONSTRAINTS;',
'drop table am_tree_parameters CASCADE CONSTRAINTS;',
'drop table am_tree_procedures CASCADE CONSTRAINTS;',
'',
'drop sequence am_export_id_seq;',
'drop sequence am_call_seq;',
''))
);
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
