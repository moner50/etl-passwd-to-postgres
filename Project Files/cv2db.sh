# This script
# Extracts data from /etc/passwd file into a CSV file.
# Extract path 
echo "Extacting data"
# The csv data file contains the user name, user id and
# home directory of each user account defined in /etc/passwd
# Extract the columns 1 (user name), 2 (user id) and 
# 6 (home directory path) from /etc/passwd
cut -d":" -f1,3,6 /etc/passwd > extracted-data.txt
# Transforms the text delimiter from ":" to ",".
echo "Transforming data"
tr ":" "," < extracted-data.txt > transformed-data.csv
# Loads the data from the CSV file into a table in PostgreSQL database.
echo "loading data"
export PGPASSWORD="xYkKaQQEtl2ykCY3343k95k5";
echo "\c template1;\COPY users FROM '/home/project/transformed-data.csv' DELIMITERS ',' CSV;" | psql --username=postgres --host=postgres
echo "SELECT * FROM users" | psql --username=postgres  --host=postgres template1 

