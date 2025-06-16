terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0.0"
    }
  }
  cloud {
    organization = "FP-Training"

    workspaces {
      name = "training-azure"
    }
  }
}

provider "azurerm" {
  subscription_id = var.subscription_ids[var.subscription_name]
  features {}
}
