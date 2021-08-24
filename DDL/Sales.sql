SPOOL 'C:\Users\mosharm\Desktop\projectdata\saletable.txt'

SET serveroutput ON
DECLARE
n NUMBER;

BEGIN
SELECT COUNT(*) INTO n FROM user_tables WHERE table_name = 'SALE';
IF(n <= 0)
THEN
EXECUTE IMMEDIATE 'CREATE TABLE SALE (TXN_NUM INT PRIMARY KEY, TXN_TYPE VARCHAR2(10), RETAIL_PRICE INT)';
dbms_output.put_line('New Sale Table has been created now');

ELSE
dbms_output.put_line('Sale Table already exists');

END IF;
end;
/
 
SPOOL OFF;