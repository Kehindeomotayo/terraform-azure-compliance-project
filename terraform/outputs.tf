# Development RG outputs
output "development_rg_name" {
  value       = azurerm_resource_group.development.name
  description = "Name of the Development Resource Group"
}

output "development_vnet_id" {
  value       = module.vnet.vnet_id
  description = "ID of the Virtual Network in the Development RG"
}

# Storage RG outputs
output "storage_rg_name" {
  value       = azurerm_resource_group.storage.name
  description = "Name of the Storage Resource Group"
}

output "storage_account_name" {
  value       = module.storage.storage_account_name
  description = "Name of the Storage Account in the Storage RG"
}

# Enterprise RG outputs
output "enterprise_rg_name" {
  value       = azurerm_resource_group.enterprise.name
  description = "Name of the Enterprise Resource Group"
}

output "enterprise_policy_assignment_id" {
  value       = module.policy.policy_assignment_id
  description = "ID of the Policy Assignment in the Enterprise RG"
}
