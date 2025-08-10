variable "resource_group_name" {
  description = "Resource Group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "policy_definition_id" {
  description = "The ID of the policy definition to assign"
  type        = string
}

variable "policy_assignment_name" {
  description = "Name for the policy assignment"
  type        = string
}

variable "common_tags" {
  description = "Common tags map"
  type        = map(string)
}
