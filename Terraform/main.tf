# --------------------------------------------------------
# Resources                                              
# --------------------------------------------------------

module "BaseInfrastructure" {
  source                           = "../../common-library/TerraformModules/BaseInfrastructure"
  resource_group_name              = var.resource_group_name
  location                         = var.location
  virtual_networks                 = var.virtual_networks
  subnets                          = var.subnets
  route_tables                     = var.route_tables
  network_security_groups          = var.network_security_groups
  net_additional_tags              = var.net_additional_tags
  sku                              = var.sku               # law sku
  retention_in_days                = var.retention_in_days # law retention_in_days
  base_infra_keyvault_name         = var.base_infra_keyvault_name
  enabled_for_disk_encryption      = true
  network_acls                     = var.network_acls
  base_infra_log_analytics_name    = var.base_infra_log_analytics_name
  base_infra_storage_accounts      = var.base_infra_storage_accounts
  vnet_peering                     = {}
  diagnostics_storage_account_name = var.base_infra_storage_accounts.sa1.name
  app_security_group_ids_map       = {}
  mandatory_tags                   = var.mandatory_tags
}

# Private Link Services
module "PrivateLinkService" {
  source                         = "../../common-library/TerraformModules/PrivateLinkService"
  private_link_services          = var.private_link_services
  resource_group_name            = module.BaseInfrastructure.resource_group_name
  subnet_ids                     = module.BaseInfrastructure.map_subnet_ids
  frontend_ip_configurations_map = module.LoadBalancer.frontend_ip_configurations_map
  pls_additional_tags            = var.additional_tags
}


# Private Endpoints
module "PrivateEndpoint" {
  source                      = "../../common-library/TerraformModules/PrivateEndpoint"
  private_endpoints           = var.private_endpoints
  resource_group_name         = module.BaseInfrastructure.resource_group_name
  key_vault_name              = module.BaseInfrastructure.key_vault_name
  subnet_ids                  = module.BaseInfrastructure.map_subnet_ids
  vnet_ids                    = module.BaseInfrastructure.map_vnet_ids
  resource_ids                = local.resource_ids
  ado_kv_pe_name              = var.ado_kv_pe_name
  ado_resource_group_name     = var.ado_resource_group_name
  ado_vnet_name               = var.ado_vnet_name
  ado_subnet_name             = var.ado_subnet_name
  pe_additional_tags          = var.additional_tags
}

module "LoadBalancer" {
  source                  = "../../common-library/TerraformModules/LoadBalancer"
  load_balancers          = var.Lbs
  resource_group_name     = module.BaseInfrastructure.resource_group_name
  zones                   = var.zones #based on zones will change the LB sku
  subnet_ids              = module.BaseInfrastructure.map_subnet_ids
  lb_additional_tags      = var.additional_tags
  load_balancer_rules     = var.LbRules
  load_balancer_nat_rules = var.LbNatRules
  lb_outbound_rules       = var.lb_outbound_rules
}

module "RecoveryServicesVault" {
  source                   = "../../common-library/TerraformModules/RecoveryServicesVault"
  resource_group_name      = module.BaseInfrastructure.resource_group_name
  rv_additional_tags       = var.additional_tags
  recovery_services_vaults = var.recovery_services_vaults
}

module "JumpVirtualmachine" {
  source                                = "../../common-library/TerraformModules/VirtualMachine"
  resource_group_name                   = module.BaseInfrastructure.resource_group_name
  key_vault_id                          = module.BaseInfrastructure.key_vault_id
  linux_vms                             = var.jump_vms
  linux_image_ids                       = local.linux_image_ids
  administrator_user_name               = var.administrator_user_name
  administrator_login_password          = var.administrator_login_password
  subnet_ids                            = module.BaseInfrastructure.map_subnet_ids
  lb_backend_address_pool_map           = module.LoadBalancer.pri_lb_backend_map_ids         #(Optional set it to null)
  sa_bootdiag_storage_uri               = module.BaseInfrastructure.primary_blob_endpoint[0] #(Mandatory)
  diagnostics_sa_name                   = module.BaseInfrastructure.sa_name[0]
  law_workspace_id                      = module.BaseInfrastructure.law_workspace_id
  law_workspace_key                     = module.BaseInfrastructure.law_key
  managed_data_disks                    = var.jump_managed_data_disks
  vm_additional_tags                    = var.additional_tags
  recovery_services_vaults              = module.RecoveryServicesVault.map_recovery_vaults
  app_security_group_ids_map            = {}
  dependencies = [
    module.BaseInfrastructure.depended_on_kv, module.RecoveryServicesVault.depended_on_rsv,
    module.BaseInfrastructure.depended_on_sa
  ]
}

module "AppVirtualmachine" {
  source                                = "../../common-library/TerraformModules/VirtualMachine"
  resource_group_name                   = module.BaseInfrastructure.resource_group_name
  key_vault_id                          = module.BaseInfrastructure.key_vault_id
  linux_vms                             = var.app_vms
  linux_image_ids                       = local.linux_image_ids
  administrator_user_name               = var.administrator_user_name
  administrator_login_password          = var.administrator_login_password
  subnet_ids                            = module.BaseInfrastructure.map_subnet_ids
  lb_backend_address_pool_map           = module.LoadBalancer.pri_lb_backend_map_ids         #(Optional set it to null)
  sa_bootdiag_storage_uri               = module.BaseInfrastructure.primary_blob_endpoint[0] #(Mandatory)
  diagnostics_sa_name                   = module.BaseInfrastructure.sa_name[0]
  law_workspace_id                      = module.BaseInfrastructure.law_workspace_id
  law_workspace_key                     = module.BaseInfrastructure.law_key
  managed_data_disks                    = var.app_managed_data_disks
  vm_additional_tags                    = var.additional_tags
  recovery_services_vaults              = module.RecoveryServicesVault.map_recovery_vaults
  app_security_group_ids_map            = {}
  dependencies = [
    module.BaseInfrastructure.depended_on_kv, module.RecoveryServicesVault.depended_on_rsv,
    module.BaseInfrastructure.depended_on_sa
  ]
}

module "JbossVirtualmachine" {
  source                                = "../../common-library/TerraformModules/VirtualMachine"
  resource_group_name                   = module.BaseInfrastructure.resource_group_name
  key_vault_id                          = module.BaseInfrastructure.key_vault_id
  linux_vms                             = var.apache_vms
  linux_image_ids                       = local.linux_image_ids
  administrator_user_name               = var.administrator_user_name
  administrator_login_password          = var.administrator_login_password
  subnet_ids                            = module.BaseInfrastructure.map_subnet_ids
  lb_backend_address_pool_map           = module.LoadBalancer.pri_lb_backend_map_ids         #(Optional set it to null)
  sa_bootdiag_storage_uri               = module.BaseInfrastructure.primary_blob_endpoint[0] #(Mandatory)
  diagnostics_sa_name                   = module.BaseInfrastructure.sa_name[0]
  law_workspace_id                      = module.BaseInfrastructure.law_workspace_id
  managed_data_disks                    = var.apache_managed_data_disks
  law_workspace_key                     = module.BaseInfrastructure.law_key
  vm_additional_tags                    = var.additional_tags
  recovery_services_vaults              = module.RecoveryServicesVault.map_recovery_vaults
  app_security_group_ids_map            = {}
  dependencies = [
    module.BaseInfrastructure.depended_on_kv, module.RecoveryServicesVault.depended_on_rsv,
    module.BaseInfrastructure.depended_on_sa
  ]
}

module "SqlVirtualmachine" {
  source                                = "../../common-library/TerraformModules/VirtualMachine"
  resource_group_name                   = module.BaseInfrastructure.resource_group_name
  key_vault_id                          = module.BaseInfrastructure.key_vault_id
  linux_vms                             = var.sql_vms
  linux_image_ids                       = local.linux_image_ids
  administrator_user_name               = var.administrator_user_name
  administrator_login_password          = var.administrator_login_password
  subnet_ids                            = module.BaseInfrastructure.map_subnet_ids
  lb_backend_address_pool_map           = module.LoadBalancer.pri_lb_backend_map_ids         #(Optional set it to null)
  sa_bootdiag_storage_uri               = module.BaseInfrastructure.primary_blob_endpoint[0] #(Mandatory)
  diagnostics_sa_name                   = module.BaseInfrastructure.sa_name[0]
  law_workspace_id                      = module.BaseInfrastructure.law_workspace_id
  law_workspace_key                     = module.BaseInfrastructure.law_key
  managed_data_disks                    = var.sql_managed_data_disks
  vm_additional_tags                    = var.additional_tags
  recovery_services_vaults              = module.RecoveryServicesVault.map_recovery_vaults
  app_security_group_ids_map            = {}
  dependencies = [
    module.BaseInfrastructure.depended_on_kv, module.RecoveryServicesVault.depended_on_rsv,
    module.BaseInfrastructure.depended_on_sa
  ]
}

module "ApplicationInsights" {
  source                       = "../../common-library/TerraformModules/ApplicationInsights"
  resource_group_name          = module.BaseInfrastructure.resource_group_name
  application_insights         = var.application_insights
  app_insights_additional_tags = var.additional_tags
}

module "ApplicationGateway" {
  source                      = "../../common-library/TerraformModules/ApplicationGateway"
  resource_group_name         = module.BaseInfrastructure.resource_group_name
  subnet_ids                  = module.BaseInfrastructure.map_subnet_ids
  app_gateway_additional_tags = var.additional_tags
  key_vault_resource_group    = var.key_vault_resource_group
  key_vault_name              = var.key_vault_name
  application_gateways        = var.application_gateways
  waf_policies                = var.waf_policies
}

module "Firewall" {
  source                   = "../../common-library/TerraformModules/AzureFirewall"
  resource_group_name      = module.BaseInfrastructure.resource_group_name # var.resource_group_name
  subnet_ids               = module.BaseInfrastructure.map_subnet_ids
  firewalls                = var.firewalls
  fw_network_rules         = var.fw_network_rules
  fw_nat_rules             = var.fw_nat_rules
  fw_application_rules     = var.fw_application_rules
  firewall_additional_tags = var.additional_tags
}