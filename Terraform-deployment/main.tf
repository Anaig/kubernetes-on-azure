#Configure teh Azure provider
provider "azurerm" {
    version = "~>1.5"
}

terraform {
    backend "azurerm" {}
}