# create resource groug 
az group create --name SimpleApiRG --location brazilsouth
# create service plan for the simple api (already exists)
az appservice plan create --name SimpleApiPlan --resource-group SimpleApiRG --sku S1 --is-linux
# create web app for the simple API (containerized)
# Note: It is better to use this within a CI/CD pipeline where the image is built and pushed to a container registry. Secrets for the registry can be managed securely.
az webapp create --name simpleapicontainer --resource-group SimpleApiRG --plan SimpleApiPlan -i <repository/image-name> -s <username> -w <password> 
