--SPOOL 'C:\Users\mosharm\Desktop\projectdata\aggregateprice.txt'

SELECT SUM(RETAIL_PRICE) AS AGGREGATION 
FROM SALE;

SELECT COUNT(*) AS TOTAL_TXN FROM SALE;

--SPOOL OFF;