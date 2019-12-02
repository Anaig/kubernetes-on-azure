# Configure the Azure provider
provider "azurerm" {
    version = "~>1.5"
}

# Stores state file in an Azure Blob Storage
terraform {
    backend "azurerm" {}
}