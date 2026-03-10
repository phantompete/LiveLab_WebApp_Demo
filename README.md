# LiveLab_WebApp_Demo
This is the demo WebApp for the OCI PostgreSQL &amp; OCI Cache Workshop

## Instructions 
- Clone this repo and configue the variables in the *deploy_application_demo.sh* bash script. 
- Make the script executable `chmod +x deploy_application_demo.sh`
- Execute the script `./deploy_application_demo.sh`
- This will install all the required dependencies then deploy the application backend and frontend services.

**Required Parameters**
- PRIMARY_REGION - "eu-frankfurt-1" Where your resources are located
- PRIMARY_SECRET_OCID - "ocid1.vaultsecret.xxx" - The OCID of the secret for your postgres user
- CACHE_HOST - "primary.valkey.xxx" - The primary FQDN of your cache
- PG_HOST - "primary.postgres.xxx" - The primary FQDN of your database
- PG_USER - "phantompete" - The name of your postgres user
- PG_DB - "postgres" - Name of the database in this case we're using default
- TRANSPORT_API_KEY - "xxx" - The API Key obtained during the workshop
