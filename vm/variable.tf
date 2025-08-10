variable "resource_group_name" {
  description = "Resource Group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "resource_prefix" {
  description = "Prefix for resource naming"
  type        = string
}

variable "common_tags" {
  description = "Common tags map"
  type        = map(string)
}

variable "subnet_id" {
  description = "Subnet ID to attach VM network interface"
  type        = string
}
