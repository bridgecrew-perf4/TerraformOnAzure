#############################################################################
# TERRAFORM BACKEND STATE VARIABLES
#############################################################################

variable "tenant_id" {
  description = "Azure tenant Id."
}
variable "subscription_id" {
  description = "Azure subscription Id."
}
variable "client_id" {
  description = "Azure service principal application Id"
}
variable "client_secret" {
  description = "Azure service principal application Secret"
}


#############################################################################
# GENERAL VARIABLES
#############################################################################

variable "resource_group_name" {
  type        = string
  description = "The Azure resource group where your resources will be created"
}

variable "location" {
  type        = string
  description = "The Azure region where your resources will be created"
}

variable "net_additional_tags" {
  type        = map(string)
  description = "A key value pair tags for your resources"
  default = {
    iac = "terraform"
  }
}
variable "additional_tags" {
  type        = map(string)
  description = "A key value pair tags for your resources"
  default = {
    iac = "terraform"
  }
}

variable "mandatory_tags" {
  type = any
  default = {
    created_by = "lr388y@att.com"
    contact_dl = "azMig-TM-Team5@list.att.com"
    mots_id    = "22805"
    auto_fix   = "no"
  }
}

variable "base_infra_keyvault_name" {
  type        = string
  description = "The default Keyvault that will be created as part of Base Infrastructure"
}

variable "base_infra_storage_accounts" {
  type        = any
  description = "The default storage account that will be created as part of Base Infrastructure"
}

variable "base_infra_log_analytics_name" {
  type        = string
  description = "The default storage account that will be created as part of Base Infrastructure"
}

variable "administrator_user_name" {
  default = "unset"
}
variable "administrator_login_password" {
  default = "unset"
}

#############################################################################
# VARIABLES
#############################################################################

# -
# - Network object
# -
variable "virtual_networks" {
  type = any
}

variable "subnets" {
  type = any
}

# -
# - Route Table
# -
variable "route_tables" {
  type = any
}

# -
# - Network Security Group
# -
variable "network_security_groups" {
  type = any
}

# -
# - Log Analytics Workspace
# -
variable "sku" {
  type = string
}
variable "retention_in_days" {
  type = string
}
variable "log_analytics_workspace" {
  type = string
}

###### Storage Account

# Container
variable "containers" {
  type        = any
  default     = {}
  description = "map of storage containers."
}

# Blob
variable "blobs" {
  type        = map
  default     = {}
  description = "map of storage blobs."
}

# File Share
variable "file_shares" {
  type        = any
  default     = {}
  description = "map of storage file shares."
}

# Queue
variable "queues" {
  type        = any
  default     = {}
  description = "map of storages queues."
}

# Table
variable "tables" {
  type        = any
  default     = {}
  description = "map of storage tables."
}

###### Key Vault
variable "network_acls" {
  default = null
  type    = any
}

# -
# - Private LoadBalancer
# -
variable "zones" {
  description = "SKU of the load balancer. Basic if empty"
  type        = list(string)
  default     = []
}

variable "Lbs" {
  type    = any
  default = {}
}

variable "LbRules" {
  type    = any
  default = {}
}

variable "LbNatRules" {
  type    = any
  default = {}
}

variable "lb_outbound_rules" {
  type    = any
  default = {}
}

# -
# - VM
# -

variable "apache_image_id" {
  type        = any
  description = "Image ID for the apache vms"
}

variable "AttbcAdb_image_id" {
  type        = any
  description = "Image ID for the app and nginx vms"
}

variable "AttbcRvAuth_image_id" {
  type        = any
  description = "Image ID for the app and nginx vms"
}

variable "sql_image_id" {
  type        = any
  description = "Image ID for the sql database"
}

variable "linux_image_ids" {
  type        = map
  description = "The ID of an Image which each Virtual Machine should be based on."
  default     = {}
}

variable "jump_vms" {
  type = any
}

variable "app_vms" {
  type = any
}

variable "apache_vms" {
  type = any
}

variable "sql_vms" {
  type = any
}


variable "windows_vms" {
  type = any
}

variable "jump_managed_data_disks" {
  type = any
  description = "Map containing storage data disk configurations"
}

variable "app_managed_data_disks" {
  type = any
  description = "Map containing storage data disk configurations"
}

variable "apache_managed_data_disks" {
  type = any
  description = "Map containing storage data disk configurations"
}

variable "sql_managed_data_disks" {
  type = any
  description = "Map containing storage data disk configurations"
}


# -
# - PRIVATE ENDPOINTS
# -
variable "private_endpoints" {
  type = any
}

variable "ado_kv_pe_name" {
  type        = string
  description = "Specifies the name for ado private endpoint to workload Key Vault"
}

variable "ado_resource_group_name" {
  type        = string
  description = "Specifies the existing ado agent resource group name"
}

variable "ado_vnet_name" {
  type        = string
  description = "Specifies the existing ado agent virtual network name"
}

variable "ado_subnet_name" {
  type        = string
  description = "Specifies the existing ado agent subnet name"
}



# -
# - PRIVATE Link Services
# -
variable "private_link_services" {
  type = any
}


# -
# - Recovery Services Vault
# -
variable "recovery_services_vaults" {
  type = any
}

# -
# - Application Insights
# -
variable "application_insights" {
  type = any
}

# -
# - Application Gateways
# -
variable "application_gateways" {
  type = any
}

variable "waf_policies" {
  type = any
}

variable "key_vault_resource_group" {
  type = any
}

variable "key_vault_name" {
  type = any
}

# -
# - Firewall
# -
variable "firewalls" {
  type = any
  description = "The Azure Firewalls with their properties."
}

variable "fw_network_rules" {
  type = any
  description = "The Azure Firewall Rules with their properties."
}

variable "fw_nat_rules" {
  type = any
  description = "The Azure Firewall Nat Rules with their properties."
}

variable "fw_application_rules" {
  type = any
  description = "The Azure Firewall Application Rules with their properties."
}