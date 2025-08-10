resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.common_tags
}

module "vnet" {
  source              = "./modules/vnet"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  resource_prefix     = var.resource_prefix
  common_tags         = var.common_tags
}

module "vm" {
  source              = "./modules/vm"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  resource_prefix     = var.resource_prefix
  common_tags         = var.common_tags
}

module "storage" {
  source              = "./modules/storage"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  resource_prefix     = var.resource_prefix
  common_tags         = var.common_tags
}

module "policy" {
  source              = "./modules/policy"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  resource_prefix     = var.resource_prefix
  common_tags         = var.common_tags
}
