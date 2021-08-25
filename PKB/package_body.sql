CREATE OR REPLACE PACKAGE BODY FIRST_PACKAGE AS 

PROCEDURE ADD_STORE( 
      s_snum STORE.STORE_NUM%type, 
      s_sname STORE.STORE_NAME%type, 
      s_scontact  STORE.STORE_CONTACT%type ) 
   IS 
   BEGIN 
      INSERT INTO STORE (STORE_NUM,STORE_NAME,STORE_CONTACT) 
         VALUES(s_snum, s_sname, s_scontact); 
   END  ADD_STORE; 


PROCEDURE DEL_STORE(s_snum  STORE.STORE_NUM%type) IS 
   BEGIN 
      DELETE FROM STORE
      WHERE STORE_NUM = s_snum; 
   END DEL_STORE; 
   
   
PROCEDURE LIST_STORE IS 
   CURSOR s_store is 
      SELECT  STORE_NAME FROM STORE; 
   TYPE c_list is TABLE OF STORE.STORE_NAME%type; 
   name_list c_list := c_list(); 
   counter integer :=0; 
   BEGIN 
      FOR n IN  s_store LOOP 
      counter := counter +1; 
      name_list.extend; 
      name_list(counter) := n.STORE_NAME; 
      dbms_output.put_line('STORE(' ||counter|| ')'||name_list(counter)); 
      END LOOP; 
   END LIST_STORE;
   
   
PROCEDURE ADD_SALE( 
 
      s_Tran_seq_no SALE.TXN_NUM%type, 
      s_Tran_Type  SALE.TXN_TYPE%type,  
      s_Retail_Price   SALE.RETAIL_PRICE%type) 
   IS 
   BEGIN 
      INSERT INTO SALE (TXN_NUM, TXN_TYPE, RETAIL_PRICE) 
         VALUES(s_Tran_seq_no, s_Tran_Type, s_Retail_Price); 
   END  ADD_SALE; 
   
   
PROCEDURE DEL_SALE(s_Tran_seq_no  SALE.TXN_NUM%type) IS 
   BEGIN 
      DELETE FROM SALE
      WHERE TXN_NUM = s_Tran_seq_no; 
   END DEL_SALE; 
   
END FIRST_PACKAGE; 
/