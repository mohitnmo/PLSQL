-- WE HAVE FIVE STORE 
SPOOL 'C:\Users\mosharm\Desktop\projectdata\storetable.txt'

CREATE TABLE STORE ( STORE_NUM INT PRIMARY KEY , STORE_NAME VARCHAR2(25), STORE_CONTACT VARCHAR(22));
INSERT INTO STORE VALUES (1, 'A','5647563456');
INSERT INTO STORE VALUES (2, 'B','5747563456');
INSERT INTO STORE VALUES (3, 'C','5847563456');
INSERT INTO STORE VALUES (4, 'D','5947563456');
INSERT INTO STORE VALUES (5, 'E','5547563456');

SPOOL OFF;