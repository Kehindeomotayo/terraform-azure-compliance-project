terraform {
  required_version = ">= 1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}

  # Explicitly disable other authentication methods
  use_cli = false
  use_msi = false

  # The ARM_* environment variables will be automatically used
  # No need to explicitly set subscription_id, tenant_id, etc.
}