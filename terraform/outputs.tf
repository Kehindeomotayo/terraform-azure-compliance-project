output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "vnet_id" {
  value = module.vnet.vnet_id
}

output "storage_account_name" {
  value = module.storage.storage_account_name
}

output "policy_assignment_id" {
  value = module.policy.policy_assignment_id
}
