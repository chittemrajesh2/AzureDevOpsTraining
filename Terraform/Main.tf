# Example main.tf

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example_rg" {
  name     = "example-rg"
  location = "West Europe"
}

resource "azurerm_virtual_machine" "example_vm" {
  name                  = "example-vm"
  location              = azurerm_resource_group.example_rg.location
  resource_group_name   = azurerm_resource_group.example_rg.name
  ...

  // Additional VM configuration
}
