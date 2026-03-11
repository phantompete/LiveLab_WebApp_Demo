# LiveLab_WebApp_Demo
This is the demo WebApp for the OCI PostgreSQL &amp; OCI Cache Workshop

## Instructions 
- Clone this repo and configue the variables in the *deploy_application_demo.sh* bash script. 
- Make the application script executable `chmod +x deploy_application_demo.sh`
- Make the dataset script executable `chmod +x refresh_dataset.sh`

**PostgreSQL**
- Execute the script `./refresh_dataset.sh` this will get the latest route information*, which you will later persist in the database. (It also checks for psql)
- Initialize the PostgreSQL database with your user with "db_init.sql"
- Execute this command `psql -h oci_postgres_host -U phantompete -d postgres -a -f "db_init.sql"`
- This will create all the tables required for the application, follow steps in the workshop to copy the data

*This data comes from an external gtfs source https://pid.cz/en/opendata/#license, data is valid for 2 weeks before a refresh is necessary.

**Application**
- Execute the script `./deploy_application_demo.sh`
- This will install all the required dependencies then deploy the application backend and frontend services

**Required Parameters**
- PRIMARY_REGION - "eu-frankfurt-1" Where your resources are located
- PRIMARY_SECRET_OCID - "ocid1.vaultsecret.xxx" - The OCID of the secret for your postgres user
- CACHE_HOST - "primary.valkey.xxx" - The primary FQDN of your cache
- PG_HOST - "primary.postgres.xxx" - The primary FQDN of your database
- PG_USER - "phantompete" - The name of your postgres user
- PG_DB - "postgres" - Name of the database in this case we're using default
- TRANSPORT_API_KEY - "xxx" - The API Key obtained during the workshop

*Note* If you don't have the psql client you can install it with this command `sudo yum -y install postgresql`
