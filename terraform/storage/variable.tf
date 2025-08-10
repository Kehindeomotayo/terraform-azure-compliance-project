variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "rg-terraform-demo"
}

variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "East US"
}

variable "resource_prefix" {
  description = "Prefix for resource names"
  type        = string
  default     = "tf-demo"
}

variable "common_tags" {
  description = "Common tags for all resources"
  type        = map(string)
  default = {
    Environment = "Development"
    Project     = "Terraform-Demo"
    Owner       = "DevOps-Team"
  }
}
#