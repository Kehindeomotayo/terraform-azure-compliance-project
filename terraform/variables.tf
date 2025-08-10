variable "resource_group_name" {
  description = "The name of the main Azure Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region where resources will be deployed"
  type        = string
}

variable "resource_prefix" {
  description = "Prefix for naming resources"
  type        = string
}

variable "common_tags" {
  description = "Common tags for all resources"
  type        = map(string)
  default = {
    Owner      = "YourName"
    Department = "IT"
    Project    = "Azure Compliance"
  }
}

# Optional: Environment-specific descriptions if needed
variable "development_environment" {
  description = "Tag or identifier for development resource group"
  type        = string
  default     = "Development"
}

variable "storage_environment" {
  description = "Tag or identifier for storage resource group"
  type        = string
  default     = "Storage"
}

variable "enterprise_environment" {
  description = "Tag or identifier for enterprise resource group"
  type        = string
  default     = "Enterprise"
}
