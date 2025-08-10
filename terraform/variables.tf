variable "resource_group_name" {
  description = "The Azure Resource Group name"
  type        = string
}

variable "location" {
  description = "Azure location"
  type        = string
}

variable "resource_prefix" {
  description = "Prefix for naming resources"
  type        = string
}

variable "common_tags" {
  description = "Common tags for resources"
  type        = map(string)
  default     = {}
}
