terraform {

   required_version = ">=0.12"

   required_providers {
     azurerm = {
       source = "hashicorp/azurerm"
       version = "~>2.0"
     }
   }
 }

 provider "azurerm" {
   features {}
 }

resource "azurerm_resource_group" "test" {
   name     = "accenturetraining"
   location = "West US 2"
 }

resource "azurerm_virtual_network" "test" {
   name                = "acctvn"
   address_space       = ["11.0.0.0/16"]
   location            = azurerm_resource_group.test.location
   resource_group_name = azurerm_resource_group.test.name
}

 resource "azurerm_subnet" "test" {
   name                 = "acctsub"
   resource_group_name  = azurerm_resource_group.test.name
   virtual_network_name = azurerm_virtual_network.test.name
   address_prefixes     = ["11.0.2.0/24"]
 }

