CREATE OR REPLACE PACKAGE BODY first_package AS 

PROCEDURE addStore( 
      s_snum Stores.Snum%type, 
      s_sname Stores.Sname%type, 
      s_scontact  Stores.Scontact%type ) 
   IS 
   BEGIN 
      INSERT INTO Stores (Snum,Sname,Scontact) 
         VALUES(s_snum, s_sname, s_scontact); 
   END  addStore; 


PROCEDURE delStore(s_snum  Stores.Snum%type) IS 
   BEGIN 
      DELETE FROM Stores
      WHERE Snum = s_snum; 
   END delStore; 
   
   
PROCEDURE StoreList IS 
   CURSOR s_store is 
      SELECT  sname FROM Store; 
   TYPE c_list is TABLE OF Store.Sname%type; 
   name_list c_list := c_list(); 
   counter integer :=0; 
   BEGIN 
      FOR n IN  s_store LOOP 
      counter := counter +1; 
      name_list.extend; 
      name_list(counter) := n.sname; 
      dbms_output.put_line('Store(' ||counter|| ')'||name_list(counter)); 
      END LOOP; 
   END StoreList;
   
   
PROCEDURE addSale( 
      s_snum Sale.snum%type, 
      s_Tran_seq_no Sale.Tran_seq_no%type, 
      s_Tran_Type  Sale.Tran_type%type,  
      s_Retail_Price   Sale.Retail_Price%type) 
   IS 
   BEGIN 
      INSERT INTO Sale (snum,Tran_seq_no,Tran_Type, Retail_Price) 
         VALUES(s_snum, s_Tran_seq_no, s_Tran_Type, s_Retail_Price); 
   END  addSale; 
   
END first_package; 
/