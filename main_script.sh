#!/usr/bin/env bash

#Load database connection info
#set -o allexport
#source .env
#set +o allexport

# Read sql query into a variable
sql1="$(<"DDL/Stores.sql")"
sql2="$(<"DDL/Sales.sql")"

sql3="$(<"DML/storedata.sql")"
sql4="$(<"DML/aggregation.sql")"

sql5="$(<"PKS/package_specification.sql")"
sql6="$(<"PKB/package_body.sql")"
sql7="$(<"RUN_PROCEDURE.sql")"



 #If sqlplus is not available, then exit
if ! command -v sqlplus > /dev/null; then 
  echo "This script requires sqlplus to be installed and on your PATH ..."
  exit 1 
fi 

# Connect to the database, run the query, then disconnect
echo -e "SET PAGESIZE 0\n SET FEEDBACK OFF\n ${sql1}" | \
sqlplus 'system/mohit123@(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=localhost)(PORT=1522)))(CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=orcl1)))'

echo -e "SET PAGESIZE 0\n SET FEEDBACK OFF\n ${sql2}" | \
sqlplus 'system/mohit123@(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=localhost)(PORT=1522)))(CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=orcl1)))'

echo -e "SET PAGESIZE 0\n SET FEEDBACK OFF\n ${sql3}" | \
sqlplus 'system/mohit123@(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=localhost)(PORT=1522)))(CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=orcl1)))'

echo -e "SET PAGESIZE 0\n SET FEEDBACK OFF\n ${sql4}" | \
sqlplus 'system/mohit123@(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=localhost)(PORT=1522)))(CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=orcl1)))'

echo -e "SET PAGESIZE 0\n SET FEEDBACK OFF\n ${sql5}" | \
sqlplus 'system/mohit123@(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=localhost)(PORT=1522)))(CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=orcl1)))'

echo -e "SET PAGESIZE 0\n SET FEEDBACK OFF\n ${sql6}" | \
sqlplus 'system/mohit123@(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=localhost)(PORT=1522)))(CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=orcl1)))'

echo -e "SET PAGESIZE 0\n SET FEEDBACK OFF\n ${sql7}" | \
sqlplus 'system/mohit123@(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=localhost)(PORT=1522)))(CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=orcl1)))'

