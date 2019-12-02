# Kubernetes on Azure
This project is a basic template to deploy Kubernetes on Azure using Terraform and applying some security features.
## Requirements:
- An [Azure](https://azure.microsoft.com/en-us/free/?ref=microsoft.com&utm_source=microsoft.com&utm_medium=docs&utm_campaign=visualstudio) subscription
- Terraform configured with access to Azure
    1. Download [Terraform distribution package](https://www.terraform.io/downloads.html)
    2. Unzip the binary called `terraform`
    3. Update your path to add the path to the Terraform binary
- An Azure service principal 
    - ```az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/${SUBSCRIPTION_ID}"```
- Update your environment variables with your subscription ID, client ID, client secret and tenant ID
    - 
    ```export ARM_SUBSCRIPTION_ID=xxxxxxxx
        export ARM_CLIENT_ID=xxxxxxx
        export ARM_CLIENT_SECRET=xxxxxxx
        export ARM_TENANT_ID=xxxxxxxx```
- Verify the installation by executing the `terraform` command in your console. If terraform can't be found, please check your Path environment variable set-up
- * **Optional set-up:** if you are working with git, you might want to add the `.terraform` files to your gitignore, which are hidden configuration files containing binaries, plan file and state files used by Terraform* 

## References
- [Terraform.io](https://www.terraform.io/)
- [Hashicoro learn](https://learn.hashicorp.com/terraform/azure)