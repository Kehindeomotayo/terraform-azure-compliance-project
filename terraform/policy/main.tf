resource "azurerm_policy_assignment" "assignment" {
  name                 = var.policy_assignment_name
  scope                = azurerm_resource_group.rg.id
  policy_definition_id = var.policy_definition_id
  description          = "Policy assignment from Terraform module"
  location             = var.location

  tags = var.common_tags
}
