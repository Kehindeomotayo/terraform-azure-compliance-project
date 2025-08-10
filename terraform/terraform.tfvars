subscription_id = "your-azure-subscription-id"
tenant_id       = "your-azure-tenant-id"
client_id       = "your-azure-client-id"
client_secret   = "your-azure-client-secret"

resource_group_name = "rg-terraform-compliance"
location            = "East US"
resource_prefix     = "compliance"

common_tags = {
  Environment = "Development"
  Project     = "Azure-Compliance"
  Owner       = "DevOps"
}
