# Initialises Terraform providers and sets their version numbers.

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "< 3.90.0"
    }
  }

  required_version = ">= 1.9.5"
}

provider "azurerm" {
  features {}

  skip_provider_registration = true
}
