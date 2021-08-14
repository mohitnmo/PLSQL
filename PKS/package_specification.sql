CREATE OR REPLACE PACKAGE first_package AS 
   
    PROCEDURE addStore( 
      s_snum Stores.Snum%type, 
      s_sname Stores.Sname%type, 
      s_scontact  Stores.Scontact%type ) ;
   
  
    PROCEDURE delStore(s_snum  Stores.Snum%type);
   
   
    PROCEDURE Storelist; 
	
	PROCEDURE addSale( 
      s_snum Sale.snum%type, 
      s_Tran_seq_no Sale.Tran_seq_no%type, 
      s_Tran_Type  Sale.Tran_type%type,  
      s_Retail_Price   Sale.Retail_Price%type) 
  
END first_package; 
/