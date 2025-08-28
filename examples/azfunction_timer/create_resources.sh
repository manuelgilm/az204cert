rg_name=azfunctionsimpletimer
location=brazilsouth
service_plan_name=azfunctionsimpletimer-plan
functionapp_name=azfunctionsimpletimer-app
storage_account_name=simpletimerstoragegs
# create resource group
az group create --name $rg_name --location $location

# create storage account
az storage account create --name $storage_account_name --location $location --resource-group $rg_name --sku Standard_LRS

# create service plan
az appservice plan create --name $service_plan_name --resource-group $rg_name --location $location --sku S1 --is-linux

# # create function app
# az functionapp create \
#     --name $functionapp_name \
#     --storage-account $storage_account_name \
#     --plan $service_plan_name \
#     --resource-group $rg_name \
#     --runtime python \
#     --runtime-version 3.12 \
#     --functions-version 4 \
#     --deployment-source-url https://github.com/manuelgilm/az204cert