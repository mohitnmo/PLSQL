-- WE HAVE FIVE STORE 
--SPOOL 'C:\Users\mosharm\Desktop\projectdata\storetable.txt'
set serveroutput ON
declare
n NUMBER;

begin
SELECT count(*) into n FROM user_tables where table_name = 'STORE';
IF(n <= 0)
THEN
execute immediate 'CREATE TABLE STORE ( STORE_NUM INT PRIMARY KEY , STORE_NAME VARCHAR2(25), STORE_CONTACT VARCHAR(22))';
dbms_output.put_line('New Store table has been created now');

ELSE
dbms_output.put_line(' Store Table already exists');

END IF;
end;
/
--SPOOL OFF;