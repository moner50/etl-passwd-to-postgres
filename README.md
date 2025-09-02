# etl-passwd-to-postgres
# ETL Project: /etc/passwd to PostgreSQL

This project demonstrates a simple **ETL (Extract-Transform-Load)** pipeline using a shell script.

## Steps
1. **Extract**: User info from `/etc/passwd`
2. **Transform**: Convert `:` to `,` for CSV format
3. **Load**: Insert data into a PostgreSQL table

### Run the script
```bash
sh etl_script.sh
