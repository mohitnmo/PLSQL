SPOOL 'C:\Users\mosharm\Desktop\projectdata\storelist.txt'
BEGIN
dbms_output.put_line('Store Details...');
SELECT  STORE_NAME FROM STORE;

dbms_output.put_line('Transaction Details...');
SELECT * FROM SALE;
END;
/

SPOOL OFF;