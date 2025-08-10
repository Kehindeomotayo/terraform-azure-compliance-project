terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.0"
    }
  }
}

provider "azurerm" {
  # These will automatically use ARM_* environment variables
  # No need to explicitly set them
  features {}
}
#