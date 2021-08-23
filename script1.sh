#!/usr/bin/env bash

#Load database connection info
#set -o allexport
#source .env
#set +o allexport

# Read sql query into a variable
sql2="$(<"query1.sql")"

 #If sqlplus is not available, then exit
if ! command -v sqlplus > /dev/null; then 
  echo "This script requires sqlplus to be installed and on your PATH ..."
  exit 1 
fi 

# Connect to the database, run the query, then disconnect
echo -e "SET PAGESIZE 0\n SET FEEDBACK OFF\n ${sql2}" | \
sqlplus 'system/mohit123@(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=localhost)(PORT=1522)))(CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=orcl1)))'
 echo "table created here" 
