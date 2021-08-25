SPOOL 'C:\Users\mosharm\Desktop\projectdata\RUN_PROCEDURE_DATA.txt'
set serveroutput on
BEGIN 
dbms_output.put_line('Showing Store table data...');
FIRST_PACKAGE.LIST_STORE;

dbms_output.put_line('Adding Stores...');
FIRST_PACKAGE.ADD_STORE(1,'AAAA','7156435634');
FIRST_PACKAGE.ADD_STORE(2,'BBBB','7256435634');
FIRST_PACKAGE.ADD_STORE(3,'CCCC','7356435634');
FIRST_PACKAGE.ADD_STORE(4,'DDDD','7456435634');
FIRST_PACKAGE.ADD_STORE(5,'EEEE','7556435634');

dbms_output.put_line('Showing Store table data afer adding....');
FIRST_PACKAGE.LIST_STORE;

dbms_output.put_line('Deleting Some Store....');
FIRST_PACKAGE.DEL_STORE(5);

dbms_output.put_line('Showing Store data after deletion');
FIRST_PACKAGE.LIST_STORE;

dbms_output.put_line('Adding Some Transaction in Sale table...');
FIRST_PACKAGE.ADD_SALE(1001,'SALE',345);
FIRST_PACKAGE.ADD_SALE(1002,'SALE',999);
FIRST_PACKAGE.ADD_SALE(1003,'SALE',699);
FIRST_PACKAGE.ADD_SALE(1004,'SALE',450);
FIRST_PACKAGE.ADD_SALE(1005,'SALE',450);
FIRST_PACKAGE.ADD_SALE(1006,'SALE',999);
END; 
/ 
spool off; 
