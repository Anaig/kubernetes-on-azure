# Kubernetes on Azure
This project is a basic template to deploy Kubernetes on Azure using Terraform and applying some security features.
## Requirements:
- An [Azure](https://azure.microsoft.com/en-us/free/?ref=microsoft.com&utm_source=microsoft.com&utm_medium=docs&utm_campaign=visualstudio) subscription
- [Terraform](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/terraform-install-configure) configured with access to Azure
- An Azure service principal `az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/${SUBSCRIPTION_ID}"
`