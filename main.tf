terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
}

locals {
  tags = {
    reason      = "TF102"
    owner       = "agsantos@plainconcepts.com"
    description = "This is a short description"
  }
}

resource "azurerm_resource_group" "rg" {
  name     = "TF102ResourceGroup"
  location = "West Europe"
  tags     = local.tags
}