# Create an Azure resource group with name "rg"
resource "azurerm_resource_group" "rg" {
    name     = var.resource_group_name
    location = var.location
}