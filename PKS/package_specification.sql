CREATE OR REPLACE PACKAGE FIRST_PACKAGE AS 
   
    PROCEDURE ADD_STORE( 
      s_snum STORE.STORE_NUM%type, 
      s_sname STORE.STORE_NAME%type, 
      s_scontact  STORE.STORE_CONTACT%type ) ;
   
  
    PROCEDURE DEL_STORE(s_snum  STORE.STORE_NUM%type);
   
   
    PROCEDURE LIST_STORE; 
	
	PROCEDURE ADD_SALE( 
      s_Tran_seq_no SALE.TXN_NUM%type, 
      s_Tran_Type  SALE.TXN_TYPE%type,  
      s_Retail_Price   SALE.RETAIL_PRICE%type);

    PROCEDURE DEL_SALE(s_Tran_seq_no  SALE.TXN_NUM%type);	  
	  
  
END FIRST_PACKAGE; 
/