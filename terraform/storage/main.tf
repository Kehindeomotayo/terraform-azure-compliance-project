resource "azurerm_storage_account" "storage" {
  name                     = lower("${var.resource_prefix}storage")
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = var.common_tags
}
#