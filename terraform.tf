terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.74.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.0"
    }

  }
}

provider "azurerm" {
  # Configuration options
  features {

  }
}

