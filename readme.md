# Kubernetes on Azure
This project is a basic template to deploy Kubernetes on Azure using Terraform and applying some security features.
## Requirements:
- An [Azure](https://azure.microsoft.com/en-us/free/?ref=microsoft.com&utm_source=microsoft.com&utm_medium=docs&utm_campaign=visualstudio) subscription
- Terraform configured with access to Azure
    1. Download [Terraform distribution package](https://www.terraform.io/downloads.html)
    2. Unzip the binary called `terraform`
    3. Update your path to add the path to the Terraform binary
- An Azure service principal 
```
az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/${SUBSCRIPTION_ID}"
```
- Update your environment variables with your subscription ID, client ID, client secret and tenant ID
``` 
export ARM_SUBSCRIPTION_ID=xxxxxxxx
export ARM_CLIENT_ID=xxxxxxx
export ARM_CLIENT_SECRET=xxxxxxx
export ARM_TENANT_ID=xxxxxxxx 
```
- Verify the installation by executing the `terraform` command in your console. If terraform can't be found, please check your Path environment variable set-up
- **Optional set-up:** *if you are working with git, you might want to add the `.terraform` files to your gitignore, which are hidden configuration files containing binaries, plan file and state files used by Terraform*

## Getting started
### AKS cluster creation
Run the code below to fetch the Azure provider's configuration and set-up the Azure storage backend.
```
terraform init \
-backend-config="storage_account_name=<YourAzureStorageAccountName>" \
-backend-config="container_name=<YourContainerName>" \
-backend-config="access_key=<YourStorageAccountAccessKey>" \
-backend-config="key=codelab.microsoft.tfstate" 
```

See what Terraform will do before applying the script. Save it in a *plan1* file.
```
terraform plan -out=plan1.plan
show plan1.plan
```

Apply your plan "plan1.plan"
```
terraform apply
```

### Connect to the AKS cluster
If you are using the Azure Cloud Shell, the Kubernetes command-line tool is already installed.

If you are working on your local PowerShell, Linux or MacOS terminal:
- Install the [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest) 
- [Install and set-up Kubectl CLI](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
Then apply these steps:
1. Login to the Azure CLI using the `az login` command
2. Chose the right susbcription using `az account set -subscription <your_subscription_id>`

Authenticate to your AKS cluster using `az aks get-credentials --resource-group k8s --name k8stest`. Then verify if the access is correct by trying `kubectl get nodes`. You should get a result similar to:
```
NAME                       STATUS   ROLES   AGE   VERSION
aks-agentpool-21324540-0   Ready    agent   5m   v1.13.12
aks-agentpool-21324540-1   Ready    agent   5m   v1.13.12
aks-agentpool-21324540-2   Ready    agent   5m   v1.13.12
```

## References
- [Terraform.io](https://www.terraform.io/)
- [Hashicorp learn](https://learn.hashicorp.com/terraform/azure)
