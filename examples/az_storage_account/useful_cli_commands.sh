rg_name="storageaccountdemogs"
storage_account_name="storageaccountdemogs"
location="brazilsouth"
# create resource group 
az group create --name $rg_name --location $location

# create storage account 
az storage account create --name $storage_account_name --resource-group $rg_name --location $location --sku Standard_LRS

# create a container within the storage account
az storage container create --name testcontainer --account-name $storage_account_name

sleep 10
# upload readme file to the container
az storage blob upload --account-name $storage_account_name --container-name testcontainer --file README.md --name test