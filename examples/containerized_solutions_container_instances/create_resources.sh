# create resource groupo 
az group create --name containerized-solutions --location brazilsouth 

DNS_NAME_LABEL=aci-example-$RANDOM
# create a container instance
az container create --resource-group containerized-solutions \
    --name simpleapigs \
    --image gilsama/simpleapigs:master \
    --ports 80 \
    --dns-name-label $DNS_NAME_LABEL --location brazilsouth \
    --os-type Linux \
    --cpu 1 \
    --memory 1.5 \
    --registry-password <passord>
    --registry-username <username>

az container show --resource-group containerized-solutions \
    --name simpleapigs \
    --query "{FQDN:ipAddress.fqdn,ProvisioningState:provisioningState}" \
    --out table     