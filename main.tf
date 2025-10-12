terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  backend "remote" {
    organization = "cr460_devoir1 2025"
    workspaces {
      name = "devoir1"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg_pipeline" {
  name     = "pipeline_ressourcegroup"
  location = "Canada East"
}
