terraform init \
-backend-config="storage_account_name=<YourAzureStorageAccountName>" \
-backend-config="container_name=<YourContainerName>" \
-backend-config="access_key=<YourStorageAccountAccessKey>" \
-backend-config="key=codelab.microsoft.tfstate" 