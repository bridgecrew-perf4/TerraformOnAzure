locals {
  resource_ids = {
    #aem    = module.MySqlDatabase.aem_server_id
    AllserversBootDiagPE       = lookup(module.BaseInfrastructure.sa_ids_map, var.base_infra_storage_accounts.sa1.name, null)
    AllserversVMDiagPE       = lookup(module.BaseInfrastructure.sa_ids_map, var.base_infra_storage_accounts.sa1.name, null)
    AllserversStoragePE       = lookup(module.BaseInfrastructure.sa_ids_map, var.base_infra_storage_accounts.sa2.name, null)
    DBBackupStoragePE       = lookup(module.BaseInfrastructure.sa_ids_map, var.base_infra_storage_accounts.sa3.name, null)
    sftp       = lookup(module.BaseInfrastructure.sa_ids_map, var.base_infra_storage_accounts.sa3.name, null)
    keyvault = module.BaseInfrastructure.key_vault_id
    nva      = "/subscriptions/7eb51ca3-6c6a-4b62-a476-763c7d336385/resourceGroups/cnxs01-westus2-lb-rg-001/providers/Microsoft.Network/privateLinkServices/30050-cnxs01-westus2-001-nva-proxy-pls"
  }
  subnet_names = [for s in module.BaseInfrastructure.map_subnets : s.id]

  linux_image_ids = {
    "attbc-jump-vm-001" = var.AttbcAdb_image_id
    "attbc-author-review-vm-001" = var.AttbcRvAuth_image_id
    "attbc-author-review-vm-002" = var.AttbcRvAuth_image_id
    "attbc-author-non-review-vm-001" = var.AttbcAdb_image_id
    "attbc-author-non-review-vm-002" = var.AttbcAdb_image_id
    "attbc-publisher-review-vm-001" = var.AttbcAdb_image_id
    "attbc-publisher-review-vm-002" = var.AttbcAdb_image_id
    "attbc-publisher-review-vm-003" = var.AttbcAdb_image_id
    "attbc-publisher-non-review-vm-001" = var.AttbcAdb_image_id
    "attbc-publisher-non-review-vm-002" = var.AttbcAdb_image_id
    "attbc-publisher-non-review-vm-003" = var.AttbcAdb_image_id
    "attbc-processor-vm-001" = var.AttbcAdb_image_id
    "attbc-dispatcher-review-vm-001" = var.AttbcAdb_image_id
    "attbc-dispatcher-non-review-vm-001" = var.AttbcAdb_image_id
    "attbc-nginx-vm-001" = var.AttbcAdb_image_id
    "attbc-nginx-vm-002" = var.AttbcAdb_image_id
    "attbc-review-relay-vm-001" = var.AttbcAdb_image_id
    "attbc-non-review-relay-vm-001" = var.AttbcAdb_image_id
    "attbc-sftp-vm-001" = var.AttbcAdb_image_id
    "attbc-apache-vm-001" = var.apache_image_id
    "attbc-apache-vm-002" = var.apache_image_id
    "attbc-aem-vm-001" = var.sql_image_id
    "attbc-aem-vm-002" = var.sql_image_id
  }
}
