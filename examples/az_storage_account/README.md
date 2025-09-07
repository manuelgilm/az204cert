# Using Azure CLI

**Creating a Storage Account**
```bash
az storage account create --name $storage_account_name --resource-group $rg_name --location $location --sku Standard_LRS
```

**Creating a container within a storage account** 
```bash
az storage container create --name $container_name --account-name $storage_account_name
```

**Uploading a blob within a container**
```bash
az storage blob upload --account-name $storage_account_name --container-name $container_name --file filename --name $blob_name
```


