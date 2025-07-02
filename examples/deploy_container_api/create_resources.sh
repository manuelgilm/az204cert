# create resource groug 
az group create --name SimpleApiRG --location brazilsouth
# create service plan for the simple api (already exists)
az appservice plan create --name SimpleApiPlan --resource-group SimpleApiRG --sku S1 --is-linux
# create web app for the simple API (containerized)
az webapp create --name simpleapicontainer --resource-group SimpleApiContainer --plan SimpleApiPlan --basic-auth Enabled