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

variable "subscription_id" {
  description = "The Azure Subscription ID"
  type        = string
  sensitive   = true
}

variable "tenant_id" {
  description = "The Azure Tenant ID"
  type        = string
  sensitive   = true
}

variable "client_id" {
  description = "The Azure Client ID"
  type        = string
  sensitive   = true
}

variable "client_secret" {
  description = "The Azure Client Secret"
  type        = string
  sensitive   = true
}