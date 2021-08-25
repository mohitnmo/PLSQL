#!/usr/bin/env bash

#Load database connection info
#set -o allexport
#source .env
#set +o allexport

 #If sqlplus is not available, then exit
if ! command -v sqlplus > /dev/null; then 
  echo "This script requires sqlplus to be installed and on your PATH ..."
  exit 1 
fi 

# Connect to the database, run the query, then disconnect
sqlplus -s system/mohit123@//localhost:1522/orcl1 <<____EOF
 
 @DDL/Stores.sql
 set echo off
 set heading off
  
____EOF

sqlplus -s system/mohit123@//localhost:1522/orcl1 <<____EOF
 
 @DDL/Sales.sql
 set echo off
 set heading off
 
____EOF

sqlplus -s system/mohit123@//localhost:1522/orcl1 <<____EOF
 
 @PKS/package_specification.sql
 set echo off
 set heading off
 
____EOF

sqlplus -s system/mohit123@//localhost:1522/orcl1 <<____EOF
  
 @PKB/package_body.sql
 set echo off
 set heading off
  
____EOF

sqlplus -s system/mohit123@//localhost:1522/orcl1 <<____EOF
  
 @RUN_PROCEDURE.sql
 set echo off
 set heading off
  
____EOF

sqlplus -s system/mohit123@//localhost:1522/orcl1 <<____EOF
  
 @DML/storedata.sql
 set echo off
 set heading off
  
____EOF

sqlplus -s system/mohit123@//localhost:1522/orcl1 <<____EOF
  
 @DML/aggregation.sql
 set echo off
 set heading off
  
____EOF

