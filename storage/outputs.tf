output "storage_account_name" {
  description = "Storage account name"
  value       = azurerm_storage_account.storage.name
}

output "storage_account_id" {
  description = "Storage account ID"
  value       = azurerm_storage_account.storage.id
}
