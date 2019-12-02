# Configure the Azure provider
provider "azurerm" {
    version = "~>1.5"
}

# Loads state file in an Azure backend
terraform {
    backend "azurerm" {}
}