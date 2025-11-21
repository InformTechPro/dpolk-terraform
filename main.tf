terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  backend "azurerm" {}
}

provider "azurerm" {
  features {}
  use_oidc = true
}

resource "azurerm_resource_group" "main" {
  name     = "rg-terraform-example"
  location = "East US"
}
