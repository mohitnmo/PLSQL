Create Table SALE(
Snum INT FOREIGN KEY REFERENCES Store(snum), 
Tran_seq_no INTEGER(6) primary key,
Tran_Type VARCHAR2(10),
Retail_Price  FLOAT(6,2)
);