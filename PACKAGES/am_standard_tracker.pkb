CREATE OR REPLACE PACKAGE BODY am_standard_tracker AS
    
  CURSOR tests IS
  SELECT check_sql,
         ltrim(app_bind_variable, ':') app_bind_variable,
         link_type,
         id,
         name,
         failure_help_text
  FROM eba_stds_standard_tests;
  ------------------------------------------------------------------------

  function  cell (
    p_text IN VARCHAR2
  ) return varchar2 
  IS
  BEGIN
    return '<td class="t-Report-cell">' || p_text || '</td>';
  END cell;
  ------------------------------------------------------------------------
  
  function get_row_as_clob(
    l_cursor   in out nocopy    NUMBER,
    p_col_cnt in number
  )
  return clob
  is
    v_value  VARCHAR2(4000);
    v_clob clob;
  begin
    -- show other columns
    FOR c IN 3..p_col_cnt LOOP
      dbms_sql.column_value(l_cursor,c,v_value);
      v_clob := v_clob||cell(APEX_ESCAPE.HTML(v_value));
    END LOOP;
    return v_clob;
  end get_row_as_clob;
  ------------------------------------------------------------------------
    
  FUNCTION get_header(
    p_test_id     in number,
    p_test_name   in varchar2,
    p_header_html in varchar2,
    p_descr       in varchar2
  )
  return varchar2
  IS
    v_header varchar2(32767);
  BEGIN
    v_header := '<h2>' || APEX_ESCAPE.HTML(p_test_name) || '</h2>';
    /* 
    if v('APP_ALIAS') = 'STANDARDS_TRACKER' then   
      sys.htp.p('<a href="'||APEX_UTIL.PREPARE_URL(p_url => 'f?p=' ||v('APP_ID')|| ':14:'||v('APP_SESSION')||'::NO::P14_ID:'||p_test_id)||'">'||APEX_ESCAPE.HTML(p_descr) ||'</a>');
    else
      sys.htp.p('<a href="'||APEX_UTIL.PREPARE_URL(p_url => 'f?p=' ||v('APP_ID')|| ':7014:'||v('APP_SESSION')||'::NO::P7014_ID:'||p_test_id)||'">'||APEX_ESCAPE.HTML(p_descr) ||'</a>');
    end if;
    */
    v_header := v_header||'<div>'||APEX_ESCAPE.HTML(p_descr)||'</div>';
    v_header := v_header||'<table class="test-report t-Report-report">';    
    v_header := v_header||'<thead>';
    v_header := v_header||'<tr>';
    v_header := v_header||'<th class="t-Report-colHead status-column">Status</th>';
    v_header := v_header||'<th class="t-Report-colHead validation-column">Validation</th>';
    v_header := v_header||p_header_html;
    v_header := v_header||'</tr>';
    v_header := v_header||'</thead>';
    v_header := v_header||'<tbody>';
    
    return v_header;
  END get_header;
  ------------------------------------------------------------------------  
      
  PROCEDURE prepare_results (
      p_application_id     IN   NUMBER
    ) 
  IS
    l_cursor              NUMBER;
    l_feedback            NUMBER;
    col_cnt               INTEGER;
    l_rec_tab             dbms_sql.desc_tab;
    col_num               NUMBER;
    --v_value               VARCHAR2(4000);    
    v_test_result         VARCHAR2(1);
    v_apex_elmt_id        NUMBER;
    v_sql                 VARCHAR2(32000);
    v_header_html         VARCHAR2(32000);
    v_first_row           BOOLEAN;      
    v_value               VARCHAR2(4000);
    
  BEGIN
    if APEX_COLLECTION.COLLECTION_EXISTS ('ST_TEST_RESULTS') THEN
      APEX_COLLECTION.DELETE_COLLECTION('ST_TEST_RESULTS');
    end if;
    APEX_COLLECTION.CREATE_COLLECTION('ST_TEST_RESULTS');
    
    if APEX_COLLECTION.COLLECTION_EXISTS ('ST_TEST_RESULTS_HEADER') THEN
      APEX_COLLECTION.DELETE_COLLECTION('ST_TEST_RESULTS_HEADER');
    end if;
    APEX_COLLECTION.CREATE_COLLECTION('ST_TEST_RESULTS_HEADER');
  
    FOR c_tests IN tests LOOP
      v_first_row := null;
      
      v_sql := c_tests.check_sql;
      l_cursor := dbms_sql.open_cursor(2);
      begin
        dbms_sql.parse(l_cursor,c_tests.check_sql,dbms_sql.native);
        dbms_sql.describe_columns(l_cursor,col_cnt,l_rec_tab);
      exception
        when others then
          dbms_sql.close_cursor(l_cursor);
          --_!!!!return  ('Error by parsing <b>"'||c_tests.name||'"</b> test - '||SQLERRM);
      end;
  
      sys.dbms_sql.bind_variable(l_cursor,c_tests.app_bind_variable,p_application_id);
      dbms_sql.define_column(l_cursor,1,v_test_result,1);    
      IF col_cnt > 2 THEN --application test
        dbms_sql.define_column(l_cursor,2,v_apex_elmt_id);
      ELSE
        v_apex_elmt_id := p_application_id; 
      END IF;
      
      v_header_html := '';
      FOR j IN 3..col_cnt LOOP
        dbms_sql.define_column(l_cursor,j,v_value,4000);
        v_header_html := v_header_html|| 
          '<th class="t-Report-colHead">'||
          APEX_ESCAPE.HTML(initcap(replace(l_rec_tab(j).col_name, '_', ' ')))||
          '</th>';
      END LOOP;
  
      l_feedback := dbms_sql.execute(l_cursor);
      WHILE dbms_sql.fetch_rows(l_cursor) > 0 LOOP
        dbms_sql.column_value(l_cursor,1,v_test_result);
        IF col_cnt > 2 THEN --application test
          dbms_sql.column_value(l_cursor,2,v_apex_elmt_id);
        END IF;  
        
        if v_first_row is null then
          v_first_row := true;
          APEX_COLLECTION.ADD_MEMBER (
            p_collection_name => 'ST_TEST_RESULTS_HEADER',                 
            p_n001 => c_tests.id,
            p_clob001 => get_header(
              p_test_id     => c_tests.id,
              p_test_name   => c_tests.name,
              p_descr       => c_tests.failure_help_text,
              p_header_html => v_header_html
            )
          );
        else   
          v_first_row := false;
        end if;
            
        APEX_COLLECTION.ADD_MEMBER (
          p_collection_name => 'ST_TEST_RESULTS',
          p_c001 => v_test_result, 
          p_n001 => c_tests.id,
          p_n002 => v_apex_elmt_id,
          p_clob001 => get_row_as_clob(
            l_cursor => l_cursor,
            p_col_cnt => col_cnt 
          )
        );
          
      END LOOP;
      dbms_sql.close_cursor(l_cursor);
    END LOOP;
  END prepare_results;  
  ------------------------------------------------------------------------
  
  function get_report(
    p_apex_id in number, 
    p_application_id in number,
    p_showonly in varchar2
  )
  return clob
  is
    v_test_id  number;
    v_clob     clob;
    v_header varchar2(32767);
  begin
   for i in ( 
     select n001 as test_id,
            clob001 as row_,
            case 
               when c001 = 'Y' THEN 'Y'
               when nvl(tv.false_positive_yn,'*') = 'Y' THEN 'F'
               else 'N'
            end test_result,
            tv.updated,
            tv.updated_by
     from apex_collections ac left outer join 
          eba_stds_test_validations tv on ( tv.application_id = p_application_id AND 
                                            tv.result_identifier = ac.n002 and 
                                            tv.test_id = ac.n001)
     where collection_name = 'ST_TEST_RESULTS'
       and n002 = p_apex_id 
       and ( p_showonly IS NULL 
             OR ( p_showonly = 'F' AND ( c001 = 'N' AND nvl(tv.false_positive_yn, 'N') != 'Y' ) ) 
             OR ( p_showonly = 'P' AND ( c001 = 'Y' OR  nvl(tv.false_positive_yn, 'N')  = 'Y' ) ) 
             OR ( p_showonly = 'N' AND ( c001 = 'N' AND nvl(tv.false_positive_yn, 'N')  = 'Y' ) ) 
            ) 
     order by n001)
    loop
      if v_test_id is null or v_test_id != i.test_id then
        if v_test_id is not null then
          v_clob := v_clob||'</tbody></table>';
        end if;  
        -- do print header 
        select clob001
        into v_header
        from apex_collections
        where collection_name = 'ST_TEST_RESULTS_HEADER'
          and n001 = i.test_id;
        v_clob := v_clob||v_header;
        v_test_id := i.test_id;
      end if;
       v_clob := v_clob||'<tr>'||cell('<a href="javascript:void(0);" class="t-Button t-Button--' ||
          CASE
            WHEN i.test_result in ('Y','F')  THEN
             'success'
            ELSE 
             'warning'
          END|| ' t-Button--stretch">' ||
          CASE
            WHEN i.test_result = 'Y' THEN
              'Pass'
            WHEN i.test_result = 'F' THEN
              'False Negative'
            ELSE 
              'Fail'
          END|| '</a>'); 
      v_clob := v_clob||cell(
          CASE
            WHEN i.test_result = 'F' THEN
            '<a href="javascript:setValidate(''-'|| p_apex_id || ''','''||i.test_id||''');" ' || 'class="t-Button t-Button--success t-Button--stretch" title='''|| apex_util.get_since(i.updated) || ' by ' || apex_escape.html(i.updated_by)||' ''>Marked as Valid</a>'
            WHEN i.test_result = 'N' THEN
            '<a href="javascript:setValidate(''+' || p_apex_id || ''','''||i.test_id||''');" ' || 'class="t-Button t-Button--stretch">' || 'Mark as Valid</a>'
            ELSE '&nbsp;'
          END
        )||i.row_||'</tr>';      
    end loop;
    if v_clob is not null then 
     null;  
    end if;
    
    return v_clob;
  end get_report;
  
END am_standard_tracker;
/
