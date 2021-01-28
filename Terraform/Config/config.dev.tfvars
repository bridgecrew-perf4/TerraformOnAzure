
# - General Terraform vars

location            = "westus2"
resource_group_name = "attbc-wus2-poc-rg-01"

administrator_user_name      = "demo"
administrator_login_password = "Nonesense!UseKeyvault2020"

# - Virtual Network

virtual_networks = {
  virtualnetwork1 = {
    name                 = "westus2-22805-poc-vnet"
    address_space        = ["10.12.0.0/16"]
    dns_servers          = null
    ddos_protection_plan = null
  }
}

# Subnets
subnets = {
  subnet1 = {
    vnet_key          = "virtualnetwork1"
    nsg_key           = "nsg1"
    rt_key            = null
    name              = "westus2-22805-poc-vnet-jump-snet"      #Jump Subnet
    address_prefixes  = ["10.12.0.0/24"]
    pe_enable         = true
    service_endpoints = null
    delegation        = []
  },
  subnet2 = {
    vnet_key          = "virtualnetwork1"
    nsg_key           = "nsg2"
    rt_key            = null
    name              = "attbc-22805-poc-author-review-snet"      #Review Author
    address_prefixes  = ["10.12.1.0/24"]
    pe_enable         = true
    service_endpoints = null
    delegation        = []
  },
  subnet3 = {
    vnet_key          = "virtualnetwork1"
    nsg_key           = "nsg3"
    rt_key            = null
    name              = "attbc-22805-poc-author-Non-review-snet"       #Non Review Author
    address_prefixes  = ["10.12.2.0/24"]
    pe_enable         = true
    service_endpoints = null
    delegation        = []
  },
  subnet4 = {
    vnet_key          = "virtualnetwork1"
    nsg_key           = "nsg13"
    rt_key            = null
    name              = "westus2-22805-poc-vnet-db-snet"       #SQL
    address_prefixes  = ["10.12.3.0/24"]
    pe_enable         = true
    service_endpoints = null
    delegation        = []
  },
  subnet5 = {
    vnet_key          = "virtualnetwork1"
    nsg_key           = "nsg5"
    rt_key            = null
    name              = "attbc-22805-poc-publisher-review-snet"       #Review Aem publisher
    address_prefixes  = ["10.12.4.0/24"]
    pe_enable         = true
    service_endpoints = null
    delegation        = []
  },
  subnet6 = {
    vnet_key          = "virtualnetwork1"
    nsg_key           = "nsg6"
    rt_key            = null
    name              = "attbc-22805-poc-publisher-Non-review-snet"       #Non-Review Aem publisher
    address_prefixes  = ["10.12.5.0/24"]
    pe_enable         = true
    service_endpoints = null
    delegation        = []
  },
  subnet7 = {
    vnet_key          = "virtualnetwork1"
    nsg_key           = "nsg8"
    rt_key            = null
    name              = "attbc-22805-poc-dispatcher-review-snet"       #Review Dispatcher
    address_prefixes  = ["10.12.6.0/24"]
    pe_enable         = true
    service_endpoints = null
    delegation        = []
  },
  subnet8 = {
    vnet_key          = "virtualnetwork1"
    nsg_key           = "nsg9"
    rt_key            = null
    name              = "attbc-22805-poc-dispatcher-Non-review-snet"      #Non-Review Dispatcher
    address_prefixes  = ["10.12.7.0/24"] 
    pe_enable         = true
    service_endpoints = null
    delegation        = []
  },
  subnet9 = {
    vnet_key          = "virtualnetwork1"
    nsg_key           = "nsg10"
    rt_key            = null
    name              = "attbc-22805-poc-processor-snet"      #Processor
    address_prefixes  = ["10.12.8.0/24"]
    pe_enable         = true
    service_endpoints = null
    delegation        = []
  },
  subnet10 = {
    vnet_key          = "virtualnetwork1"
    nsg_key           = null
    rt_key            = null
    name              = "westus2-22805-poc-vnet-appgw-snet-01"     #Application gateway
    address_prefixes  = ["10.12.9.0/24"]
    pe_enable         = true
    service_endpoints = null
    delegation        = []
  },
  subnet11 = {
    vnet_key          = "virtualnetwork1"
    nsg_key           = null
    rt_key            = null
    name              = "AzureFirewallSubnet"       #Firewall
    address_prefixes  = ["10.12.10.0/24"]
    pe_enable         = true
    service_endpoints = null
    delegation        = []
  },
  subnet12 = {
    vnet_key          = "virtualnetwork1"
    nsg_key           = "nsg7"
    rt_key            = null
    name              = "attbc-22805-poc-apache-snet"    #Jboss
    address_prefixes  = ["10.12.11.0/24"]
    pe_enable         = true
    service_endpoints = null
    delegation        = []
  },
  subnet13 = {
    vnet_key          = "virtualnetwork1"
    nsg_key           = "nsg14"
    rt_key            = null
    name              = "westus2-22805-poc-vnet-nginx-snet-01"   #Nginx to App Gateway
    address_prefixes  = ["10.12.12.0/24"]
    pe_enable         = true
    service_endpoints = null
    delegation        = []
  },
  subnet14 = {
    vnet_key          = "virtualnetwork1"
    nsg_key           = "nsg4"
    rt_key            = null
    name              = "westus2-22805-poc-vnet-nginx-snet-02"   #Nginx to Author pls
    address_prefixes  = ["10.12.13.0/24"]
    pe_enable         = true
    service_endpoints = null
    delegation        = []
  },
  subnet15 = {
    vnet_key          = "virtualnetwork1"
    nsg_key           = null
    rt_key            = null
    name              = "westus2-22805-poc-vnet-pe-snet-01"      #PE
    address_prefixes  = ["10.12.14.0/24"]
    pe_enable         = true
    service_endpoints = null
    delegation        = []
  },
  subnet16 = {
    vnet_key          = "virtualnetwork1"
    nsg_key           = null
    rt_key            = null
    name              = "westus2-22805-poc-vnet-pls-snet-01"     #PLS
    address_prefixes  = ["10.12.15.0/24"]
    pe_enable         = true
    service_endpoints = null
    delegation        = []
  },
   subnet17 = {
    vnet_key          = "virtualnetwork1"
    nsg_key           = "nsg11"
    rt_key            = null
    name              = "westus2-22805-poc-vnet-relay-review-snet-01"     #relay-review
    address_prefixes  = ["10.12.17.0/24"]
    pe_enable         = true
    service_endpoints = null
    delegation        = []
  },
   subnet18 = {
    vnet_key          = "virtualnetwork1"
    nsg_key           = "nsg12"
    rt_key            = null
    name              = "westus2-22805-poc-vnet-relay-non-review-snet-01"     #reliey non-review
    address_prefixes  = ["10.12.18.0/24"]
    pe_enable         = true
    service_endpoints = null
    delegation        = []
  },
    subnet19 = {
    vnet_key          = "virtualnetwork1"
    nsg_key           = "nsg15"
    rt_key            = null
    name              = "westus2-22805-poc-vnet-sftp-snet-01"     #sftp-subnet
    address_prefixes  = ["10.12.19.0/24"]
    pe_enable         = true
    service_endpoints = null
    delegation        = []
  }
}

route_tables = {}

# - Base Infrastructure Network Security Groups

network_security_groups = {
    nsg1 = {
      name = "attbc-22805-poc-jump-nsg-01"
      security_rules = [
        {
          name                         = "jump-to-log-analytics"
          description                  = "Egress all traffic to Azure Monitor Service"
          priority                     = 200
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_ranges      = ["80","443"]
          destination_port_range       = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "AzureMonitor"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "jump-to-Guest-And-Hybrid-Management"
          description                  = "Egress all traffic to Guest and Hybird Management Service"
          priority                     = 205
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "443"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "GuestAndHybridManagement"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "jump-to-Azure-Active-Directory"
          description                  = "Egress all traffic to Azure Active Directory Service"
          priority                     = 210
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "AzureActiveDirectory"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "jump-to-Azure-KV-Storage-Squid-PE"
          description                  = "Egress from Jumpbox subnet to the Azure Key Vault Private Endpoint, Storage Private Endpoint(s), SQUID Proxy Private Endpoint"
          priority                     = 220
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "443"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.11.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "jump-to-Web-subnet"
          description                  = "Egress SSH from Jumpbox subnet to Web subnet "
          priority                     = 225
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "22"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.9.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "jump-to-App-subnet"
          description                  = "Egress SSH from Jumpbox subnet to App subnet1"
          priority                     = 245
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "22"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.2.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "jump-to-App-subnet2"
          description                  = "Egress SSH from Jumpbox subnet to App subnet2"
          priority                     = 250
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "22"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.0.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "jump-to-App-subnet3"
          description                  = "Egress SSH from Jumpbox subnet to App subnet3"
          priority                     = 255
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "22"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.1.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "jump-to-App-subnet4"
          description                  = "Egress SSH from Jumpbox subnet to App subnet4"
          priority                     = 260
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "22"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.2.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "jump-to-App-subnet5"
          description                  = "Egress SSH from Jumpbox subnet to App subnet5"
          priority                     = 265
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "22"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.3.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "jump-to-App-subnet6"
          description                  = "Egress SSH from Jumpbox subnet to App subnet6"
          priority                     = 270
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "22"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.4.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "jump-to-App-subnet7"
          description                  = "Egress SSH from Jumpbox subnet to App subnet7"
          priority                     = 275
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "22"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.5.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "jump-to-db-subnet"
          description                  = "Egress SSH from Jumpbox subnet to DB Subnet"
          priority                     = 230
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "22"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.3.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "Jumpbox-Subnet-to-PLS-Subnet-ssh"
          description                  = "Ingress ssh from PLS Subnet to Jumpbox Subnet"
          priority                     = 1000
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "22"
          destination_port_ranges      = null
          source_address_prefix        = "*" 
          source_address_prefixes      = null
          destination_address_prefix   = "*"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "Block-Internet-Traffic"
          description                  = "Block all Internet Traffic"
          priority                     = 4000
          direction                    = "Outbound"
          access                       = "Deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "Internet"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "Inbound-traffic-Load-Balancer"
          description                  = "Allow inbound from Azure Load Balancer"
          priority                     = 4040
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "Block-inbound-traffic"
          description                  = "Block all remaining inbound traffic"
          priority                     = 4050
          direction                    = "Inbound"
          access                       = "Deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "Block-outbound-traffic"
          description                  = "Block all remaining outbound traffic"
          priority                     = 4050
          direction                    = "Outbound"
          access                       = "Deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        }
      ]
    },
    nsg2 = {
      name = "attbc-22805-poc-author-review-nsg-01"
      security_rules = [
        {
          name                         = "app-to-azure-monitor-log-analytics"
          description                  = "Egress all traffic to Azure Monitor Service"
          priority                     = 200
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_ranges      = ["80","443"]
          destination_port_range       = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "AzureMonitor"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-to-Guest-And-Hybrid-Management"
          description                  = "Egress all traffic to Guest and Hybird Management Service"
          priority                     = 205
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "443"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "GuestAndHybridManagement"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-to-Azure-Active-Directory"
          description                  = "Egress all traffic to Azure Active Directory Service"
          priority                     = 210
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "AzureActiveDirectory"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-to-Azure-KV-Storage-Squid-PE"
          description                  = "Egress from app subnet to the Azure Key Vault Private Endpoint, Storage Private Endpoint(s), SQUID Proxy Private Endpoint"
          priority                     = 215
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "443"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.14.0/24" 
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-sunet-to-db-subnet"
          description                  = "Egress from app subnet to db subnet"
          priority                     = 220
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "3306"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.3.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "non-https-traffic-nva-to-conexus"
          description                  = "Egress non-https traffic through NVA proxy back to Conexus"
          priority                     = 225
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.14.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "ingress-traffic-web-to-app-subnet"
          description                  = "Ingress traffic from web tier to app1 tier for application functionality"
          priority                     = 1005
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = null
          destination_port_ranges      = ["7190","7290","7180","7280","7120","7281","8210","8211","7101","7001","7003","7210"]
          source_address_prefix        = "10.12.12.0/24"
          source_address_prefixes      = null
          destination_address_prefix   = "*"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "ingress-ssh-jump-to-app-subnet"
          description                  = "Ingress SSH traffic from Jump subnet to app subnet"
          priority                     = 1050
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "22"
          destination_port_ranges      = null
          source_address_prefix        = "10.12.0.0/24"
          source_address_prefixes      = null
          destination_address_prefix   = "*"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "block-internet"
          description                  = "Block all Internet Traffic per"
          priority                     = 4000
          direction                    = "Outbound"
          access                       = "Deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "Internet"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "inbound-from-azure-load-balancer"
          description                  = "Allow inbound from Azure Load Balancer"
          priority                     = 4040
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "block-inbound-traffic"
          description                  = "Block all remaining inbound traffic"
          priority                     = 4050
          direction                    = "Inbound"
          access                       = "Deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "block-outbound-traffic"
          description                  = "Block all remaining inbound traffic"
          priority                     = 4050
          direction                    = "Outbound"
          access                       = "Deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        }
      ]
    },
    nsg3 = {
      name = "attbc-22805-poc-author-Non-review-nsg-01"
      security_rules = [
        {
          name                         = "app-to-azure-monitor-log-analytics"
          description                  = "Egress all traffic to Azure Monitor Service"
          priority                     = 200
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_ranges      = ["80","443"]
          destination_port_range       = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "AzureMonitor"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-to-Guest-And-Hybrid-Management"
          description                  = "Egress all traffic to Guest and Hybird Management Service"
          priority                     = 205
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "443"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "GuestAndHybridManagement"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-to-Azure-Active-Directory"
          description                  = "Egress all traffic to Azure Active Directory Service"
          priority                     = 210
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "AzureActiveDirectory"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-to-Azure-KV-Storage-Squid-PE"
          description                  = "Egress from app subnet to the Azure Key Vault Private Endpoint, Storage Private Endpoint(s), SQUID Proxy Private Endpoint"
          priority                     = 215
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "443"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.14.0/24" 
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-sunet-to-db-subnet"
          description                  = "Egress from app subnet to db subnet"
          priority                     = 220
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "3306"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.3.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "non-https-traffic-nva-to-conexus"
          description                  = "Egress non-https traffic through NVA proxy back to Conexus"
          priority                     = 225
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.14.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "ingress-traffic-web-to-app-subnet"
          description                  = "Ingress traffic from web tier to app1 tier for application functionality"
          priority                     = 1005
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = null
          destination_port_ranges      = ["7190","7290","7180","7280","7120","7281","8210","8211","7101","7001","7003","7210"]
          source_address_prefix        = "10.12.12.0/24"
          source_address_prefixes      = null
          destination_address_prefix   = "*"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "ingress-ssh-jump-to-app-subnet"
          description                  = "Ingress SSH traffic from Jump subnet to app subnet"
          priority                     = 1050
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "22"
          destination_port_ranges      = null
          source_address_prefix        = "10.12.0.0/24"
          source_address_prefixes      = null
          destination_address_prefix   = "*"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "block-internet"
          description                  = "Block all Internet Traffic per"
          priority                     = 4000
          direction                    = "Outbound"
          access                       = "Deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "Internet"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "inbound-from-azure-load-balancer"
          description                  = "Allow inbound from Azure Load Balancer"
          priority                     = 4040
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "block-inbound-traffic"
          description                  = "Block all remaining inbound traffic"
          priority                     = 4050
          direction                    = "Inbound"
          access                       = "Deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "block-outbound-traffic"
          description                  = "Block all remaining inbound traffic"
          priority                     = 4050
          direction                    = "Outbound"
          access                       = "Deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        }
      ]
    },
     nsg4 = {
      name = "attbc-22805-poc-Nginx-02-nsg-01"
      security_rules = [
        {
          name                         = "app-to-azure-monitor-log-analytics"
          description                  = "Egress all traffic to Azure Monitor Service"
          priority                     = 200
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_ranges      = ["80","443"]
          destination_port_range       = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "AzureMonitor"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-to-Guest-And-Hybrid-Management"
          description                  = "Egress all traffic to Guest and Hybird Management Service"
          priority                     = 205
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "443"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "GuestAndHybridManagement"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-to-Azure-Active-Directory"
          description                  = "Egress all traffic to Azure Active Directory Service"
          priority                     = 210
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "AzureActiveDirectory"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-to-Azure-KV-Storage-Squid-PE"
          description                  = "Egress from app subnet to the Azure Key Vault Private Endpoint, Storage Private Endpoint(s), SQUID Proxy Private Endpoint"
          priority                     = 215
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "443"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.14.0/24" 
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-sunet-to-db-subnet"
          description                  = "Egress from app subnet to db subnet"
          priority                     = 220
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "3306"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.3.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "non-https-traffic-nva-to-conexus"
          description                  = "Egress non-https traffic through NVA proxy back to Conexus"
          priority                     = 225
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.14.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "ingress-traffic-web-to-app-subnet"
          description                  = "Ingress traffic from web tier to app1 tier for application functionality"
          priority                     = 1005
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = null
          destination_port_ranges      = ["7190","7290","7180","7280","7120","7281","8210","8211","7101","7001","7003","7210"]
          source_address_prefix        = "10.12.12.0/24"
          source_address_prefixes      = null
          destination_address_prefix   = "*"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "ingress-ssh-jump-to-app-subnet"
          description                  = "Ingress SSH traffic from Jump subnet to app subnet"
          priority                     = 1050
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "22"
          destination_port_ranges      = null
          source_address_prefix        = "10.12.0.0/24"
          source_address_prefixes      = null
          destination_address_prefix   = "*"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "block-internet"
          description                  = "Block all Internet Traffic per"
          priority                     = 4000
          direction                    = "Outbound"
          access                       = "Deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "Internet"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "inbound-from-azure-load-balancer"
          description                  = "Allow inbound from Azure Load Balancer"
          priority                     = 4040
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "block-inbound-traffic"
          description                  = "Block all remaining inbound traffic"
          priority                     = 4050
          direction                    = "Inbound"
          access                       = "Deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "block-outbound-traffic"
          description                  = "Block all remaining inbound traffic"
          priority                     = 4050
          direction                    = "Outbound"
          access                       = "Deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        }
      ]
    },
     nsg5 = {
      name = "attbc-22805-poc-publisher-review-nsg-01"
      security_rules = [
        {
          name                         = "app-to-azure-monitor-log-analytics"
          description                  = "Egress all traffic to Azure Monitor Service"
          priority                     = 200
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_ranges      = ["80","443"]
          destination_port_range       = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "AzureMonitor"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-to-Guest-And-Hybrid-Management"
          description                  = "Egress all traffic to Guest and Hybird Management Service"
          priority                     = 205
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "443"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "GuestAndHybridManagement"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-to-Azure-Active-Directory"
          description                  = "Egress all traffic to Azure Active Directory Service"
          priority                     = 210
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "AzureActiveDirectory"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-to-Azure-KV-Storage-Squid-PE"
          description                  = "Egress from app subnet to the Azure Key Vault Private Endpoint, Storage Private Endpoint(s), SQUID Proxy Private Endpoint"
          priority                     = 215
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "443"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.14.0/24" 
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-sunet-to-db-subnet"
          description                  = "Egress from app subnet to db subnet"
          priority                     = 220
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "3306"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.3.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "non-https-traffic-nva-to-conexus"
          description                  = "Egress non-https traffic through NVA proxy back to Conexus"
          priority                     = 225
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.14.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "ingress-traffic-web-to-app-subnet"
          description                  = "Ingress traffic from web tier to app1 tier for application functionality"
          priority                     = 1005
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = null
          destination_port_ranges      = ["7190","7290","7180","7280","7120","7281","8210","8211","7101","7001","7003","7210"]
          source_address_prefix        = "10.12.12.0/24"
          source_address_prefixes      = null
          destination_address_prefix   = "*"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "ingress-ssh-jump-to-app-subnet"
          description                  = "Ingress SSH traffic from Jump subnet to app subnet"
          priority                     = 1050
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "22"
          destination_port_ranges      = null
          source_address_prefix        = "10.12.0.0/24"
          source_address_prefixes      = null
          destination_address_prefix   = "*"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "block-internet"
          description                  = "Block all Internet Traffic per"
          priority                     = 4000
          direction                    = "Outbound"
          access                       = "Deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "Internet"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "inbound-from-azure-load-balancer"
          description                  = "Allow inbound from Azure Load Balancer"
          priority                     = 4040
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "block-inbound-traffic"
          description                  = "Block all remaining inbound traffic"
          priority                     = 4050
          direction                    = "Inbound"
          access                       = "Deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "block-outbound-traffic"
          description                  = "Block all remaining inbound traffic"
          priority                     = 4050
          direction                    = "Outbound"
          access                       = "Deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        }
      ]
    },
     nsg6 = {
      name = "attbc-22805-poc-publisher-non-review-nsg-01"
      security_rules = [
        {
          name                         = "app-to-azure-monitor-log-analytics"
          description                  = "Egress all traffic to Azure Monitor Service"
          priority                     = 200
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_ranges      = ["80","443"]
          destination_port_range       = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "AzureMonitor"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-to-Guest-And-Hybrid-Management"
          description                  = "Egress all traffic to Guest and Hybird Management Service"
          priority                     = 205
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "443"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "GuestAndHybridManagement"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-to-Azure-Active-Directory"
          description                  = "Egress all traffic to Azure Active Directory Service"
          priority                     = 210
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "AzureActiveDirectory"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-to-Azure-KV-Storage-Squid-PE"
          description                  = "Egress from app subnet to the Azure Key Vault Private Endpoint, Storage Private Endpoint(s), SQUID Proxy Private Endpoint"
          priority                     = 215
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "443"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.14.0/24" 
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-sunet-to-db-subnet"
          description                  = "Egress from app subnet to db subnet"
          priority                     = 220
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "3306"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.3.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "non-https-traffic-nva-to-conexus"
          description                  = "Egress non-https traffic through NVA proxy back to Conexus"
          priority                     = 225
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.14.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "ingress-traffic-web-to-app-subnet"
          description                  = "Ingress traffic from web tier to app1 tier for application functionality"
          priority                     = 1005
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = null
          destination_port_ranges      = ["7190","7290","7180","7280","7120","7281","8210","8211","7101","7001","7003","7210"]
          source_address_prefix        = "10.12.12.0/24"
          source_address_prefixes      = null
          destination_address_prefix   = "*"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "ingress-ssh-jump-to-app-subnet"
          description                  = "Ingress SSH traffic from Jump subnet to app subnet"
          priority                     = 1050
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "22"
          destination_port_ranges      = null
          source_address_prefix        = "10.12.0.0/24"
          source_address_prefixes      = null
          destination_address_prefix   = "*"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "block-internet"
          description                  = "Block all Internet Traffic per"
          priority                     = 4000
          direction                    = "Outbound"
          access                       = "Deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "Internet"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "inbound-from-azure-load-balancer"
          description                  = "Allow inbound from Azure Load Balancer"
          priority                     = 4040
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "block-inbound-traffic"
          description                  = "Block all remaining inbound traffic"
          priority                     = 4050
          direction                    = "Inbound"
          access                       = "Deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "block-outbound-traffic"
          description                  = "Block all remaining inbound traffic"
          priority                     = 4050
          direction                    = "Outbound"
          access                       = "Deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        }
      ]
    },
     nsg7 = {
      name = "attbc-22805-poc-apache-nsg-01"
      security_rules = [
        {
          name                         = "app-to-azure-monitor-log-analytics"
          description                  = "Egress all traffic to Azure Monitor Service"
          priority                     = 200
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_ranges      = ["80","443"]
          destination_port_range       = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "AzureMonitor"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-to-Guest-And-Hybrid-Management"
          description                  = "Egress all traffic to Guest and Hybird Management Service"
          priority                     = 205
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "443"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "GuestAndHybridManagement"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-to-Azure-Active-Directory"
          description                  = "Egress all traffic to Azure Active Directory Service"
          priority                     = 210
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "AzureActiveDirectory"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-to-Azure-KV-Storage-Squid-PE"
          description                  = "Egress from app subnet to the Azure Key Vault Private Endpoint, Storage Private Endpoint(s), SQUID Proxy Private Endpoint"
          priority                     = 215
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "443"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.14.0/24" 
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-sunet-to-db-subnet"
          description                  = "Egress from app subnet to db subnet"
          priority                     = 220
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "3306"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.3.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "non-https-traffic-nva-to-conexus"
          description                  = "Egress non-https traffic through NVA proxy back to Conexus"
          priority                     = 225
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.14.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "ingress-traffic-web-to-app-subnet"
          description                  = "Ingress traffic from web tier to app1 tier for application functionality"
          priority                     = 1005
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = null
          destination_port_ranges      = ["7190","7290","7180","7280","7120","7281","8210","8211","7101","7001","7003","7210"]
          source_address_prefix        = "10.12.12.0/24"
          source_address_prefixes      = null
          destination_address_prefix   = "*"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "ingress-ssh-jump-to-app-subnet"
          description                  = "Ingress SSH traffic from Jump subnet to app subnet"
          priority                     = 1050
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "22"
          destination_port_ranges      = null
          source_address_prefix        = "10.12.0.0/24"
          source_address_prefixes      = null
          destination_address_prefix   = "*"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "block-internet"
          description                  = "Block all Internet Traffic per"
          priority                     = 4000
          direction                    = "Outbound"
          access                       = "Deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "Internet"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "inbound-from-azure-load-balancer"
          description                  = "Allow inbound from Azure Load Balancer"
          priority                     = 4040
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "block-inbound-traffic"
          description                  = "Block all remaining inbound traffic"
          priority                     = 4050
          direction                    = "Inbound"
          access                       = "Deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "block-outbound-traffic"
          description                  = "Block all remaining inbound traffic"
          priority                     = 4050
          direction                    = "Outbound"
          access                       = "Deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        }
      ]
    },
     nsg8 = {
      name = "attbc-22805-poc-dispatcher-review-nsg-01"
      security_rules = [
        {
          name                         = "app-to-azure-monitor-log-analytics"
          description                  = "Egress all traffic to Azure Monitor Service"
          priority                     = 200
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_ranges      = ["80","443"]
          destination_port_range       = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "AzureMonitor"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-to-Guest-And-Hybrid-Management"
          description                  = "Egress all traffic to Guest and Hybird Management Service"
          priority                     = 205
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "443"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "GuestAndHybridManagement"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-to-Azure-Active-Directory"
          description                  = "Egress all traffic to Azure Active Directory Service"
          priority                     = 210
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "AzureActiveDirectory"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-to-Azure-KV-Storage-Squid-PE"
          description                  = "Egress from app subnet to the Azure Key Vault Private Endpoint, Storage Private Endpoint(s), SQUID Proxy Private Endpoint"
          priority                     = 215
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "443"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.14.0/24" 
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-sunet-to-db-subnet"
          description                  = "Egress from app subnet to db subnet"
          priority                     = 220
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "3306"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.3.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "non-https-traffic-nva-to-conexus"
          description                  = "Egress non-https traffic through NVA proxy back to Conexus"
          priority                     = 225
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.14.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "ingress-traffic-web-to-app-subnet"
          description                  = "Ingress traffic from web tier to app1 tier for application functionality"
          priority                     = 1005
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = null
          destination_port_ranges      = ["7190","7290","7180","7280","7120","7281","8210","8211","7101","7001","7003","7210"]
          source_address_prefix        = "10.12.12.0/24"
          source_address_prefixes      = null
          destination_address_prefix   = "*"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "ingress-ssh-jump-to-app-subnet"
          description                  = "Ingress SSH traffic from Jump subnet to app subnet"
          priority                     = 1050
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "22"
          destination_port_ranges      = null
          source_address_prefix        = "10.12.0.0/24"
          source_address_prefixes      = null
          destination_address_prefix   = "*"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "block-internet"
          description                  = "Block all Internet Traffic per"
          priority                     = 4000
          direction                    = "Outbound"
          access                       = "Deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "Internet"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "inbound-from-azure-load-balancer"
          description                  = "Allow inbound from Azure Load Balancer"
          priority                     = 4040
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "block-inbound-traffic"
          description                  = "Block all remaining inbound traffic"
          priority                     = 4050
          direction                    = "Inbound"
          access                       = "Deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "block-outbound-traffic"
          description                  = "Block all remaining inbound traffic"
          priority                     = 4050
          direction                    = "Outbound"
          access                       = "Deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        }
      ]
    },
     nsg9 = {
      name = "attbc-22805-poc-dispatcher-Non-review-nsg-01"
      security_rules = [
        {
          name                         = "app-to-azure-monitor-log-analytics"
          description                  = "Egress all traffic to Azure Monitor Service"
          priority                     = 200
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_ranges      = ["80","443"]
          destination_port_range       = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "AzureMonitor"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-to-Guest-And-Hybrid-Management"
          description                  = "Egress all traffic to Guest and Hybird Management Service"
          priority                     = 205
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "443"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "GuestAndHybridManagement"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-to-Azure-Active-Directory"
          description                  = "Egress all traffic to Azure Active Directory Service"
          priority                     = 210
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "AzureActiveDirectory"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-to-Azure-KV-Storage-Squid-PE"
          description                  = "Egress from app subnet to the Azure Key Vault Private Endpoint, Storage Private Endpoint(s), SQUID Proxy Private Endpoint"
          priority                     = 215
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "443"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.14.0/24" 
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-sunet-to-db-subnet"
          description                  = "Egress from app subnet to db subnet"
          priority                     = 220
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "3306"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.3.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "non-https-traffic-nva-to-conexus"
          description                  = "Egress non-https traffic through NVA proxy back to Conexus"
          priority                     = 225
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.14.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "ingress-traffic-web-to-app-subnet"
          description                  = "Ingress traffic from web tier to app1 tier for application functionality"
          priority                     = 1005
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = null
          destination_port_ranges      = ["7190","7290","7180","7280","7120","7281","8210","8211","7101","7001","7003","7210"]
          source_address_prefix        = "10.12.12.0/24"
          source_address_prefixes      = null
          destination_address_prefix   = "*"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "ingress-ssh-jump-to-app-subnet"
          description                  = "Ingress SSH traffic from Jump subnet to app subnet"
          priority                     = 1050
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "22"
          destination_port_ranges      = null
          source_address_prefix        = "10.12.0.0/24"
          source_address_prefixes      = null
          destination_address_prefix   = "*"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "block-internet"
          description                  = "Block all Internet Traffic per"
          priority                     = 4000
          direction                    = "Outbound"
          access                       = "Deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "Internet"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "inbound-from-azure-load-balancer"
          description                  = "Allow inbound from Azure Load Balancer"
          priority                     = 4040
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "block-inbound-traffic"
          description                  = "Block all remaining inbound traffic"
          priority                     = 4050
          direction                    = "Inbound"
          access                       = "Deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "block-outbound-traffic"
          description                  = "Block all remaining inbound traffic"
          priority                     = 4050
          direction                    = "Outbound"
          access                       = "Deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        }
      ]
    },
     nsg10 = {
      name = "attbc-22805-poc-processor-nsg-01"
      security_rules = [
        {
          name                         = "app-to-azure-monitor-log-analytics"
          description                  = "Egress all traffic to Azure Monitor Service"
          priority                     = 200
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_ranges      = ["80","443"]
          destination_port_range       = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "AzureMonitor"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-to-Guest-And-Hybrid-Management"
          description                  = "Egress all traffic to Guest and Hybird Management Service"
          priority                     = 205
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "443"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "GuestAndHybridManagement"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-to-Azure-Active-Directory"
          description                  = "Egress all traffic to Azure Active Directory Service"
          priority                     = 210
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "AzureActiveDirectory"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-to-Azure-KV-Storage-Squid-PE"
          description                  = "Egress from app subnet to the Azure Key Vault Private Endpoint, Storage Private Endpoint(s), SQUID Proxy Private Endpoint"
          priority                     = 215
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "443"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.14.0/24" 
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-sunet-to-db-subnet"
          description                  = "Egress from app subnet to db subnet"
          priority                     = 220
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "3306"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.3.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "non-https-traffic-nva-to-conexus"
          description                  = "Egress non-https traffic through NVA proxy back to Conexus"
          priority                     = 225
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.14.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "ingress-traffic-web-to-app-subnet"
          description                  = "Ingress traffic from web tier to app1 tier for application functionality"
          priority                     = 1005
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = null
          destination_port_ranges      = ["7190","7290","7180","7280","7120","7281","8210","8211","7101","7001","7003","7210"]
          source_address_prefix        = "10.12.12.0/24"
          source_address_prefixes      = null
          destination_address_prefix   = "*"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "ingress-ssh-jump-to-app-subnet"
          description                  = "Ingress SSH traffic from Jump subnet to app subnet"
          priority                     = 1050
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "22"
          destination_port_ranges      = null
          source_address_prefix        = "10.12.0.0/24"
          source_address_prefixes      = null
          destination_address_prefix   = "*"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "block-internet"
          description                  = "Block all Internet Traffic per"
          priority                     = 4000
          direction                    = "Outbound"
          access                       = "Deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "Internet"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "inbound-from-azure-load-balancer"
          description                  = "Allow inbound from Azure Load Balancer"
          priority                     = 4040
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "block-inbound-traffic"
          description                  = "Block all remaining inbound traffic"
          priority                     = 4050
          direction                    = "Inbound"
          access                       = "Deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "block-outbound-traffic"
          description                  = "Block all remaining inbound traffic"
          priority                     = 4050
          direction                    = "Outbound"
          access                       = "Deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        }
      ]
    },
     nsg11 = {
      name = "attbc-22805-poc-relay-review-nsg-01"
      security_rules = [
        {
          name                         = "app-to-azure-monitor-log-analytics"
          description                  = "Egress all traffic to Azure Monitor Service"
          priority                     = 200
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_ranges      = ["80","443"]
          destination_port_range       = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "AzureMonitor"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-to-Guest-And-Hybrid-Management"
          description                  = "Egress all traffic to Guest and Hybird Management Service"
          priority                     = 205
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "443"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "GuestAndHybridManagement"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-to-Azure-Active-Directory"
          description                  = "Egress all traffic to Azure Active Directory Service"
          priority                     = 210
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "AzureActiveDirectory"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-to-Azure-KV-Storage-Squid-PE"
          description                  = "Egress from app subnet to the Azure Key Vault Private Endpoint, Storage Private Endpoint(s), SQUID Proxy Private Endpoint"
          priority                     = 215
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "443"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.14.0/24" 
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-sunet-to-db-subnet"
          description                  = "Egress from app subnet to db subnet"
          priority                     = 220
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "3306"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.3.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "non-https-traffic-nva-to-conexus"
          description                  = "Egress non-https traffic through NVA proxy back to Conexus"
          priority                     = 225
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.14.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "ingress-traffic-web-to-app-subnet"
          description                  = "Ingress traffic from web tier to app1 tier for application functionality"
          priority                     = 1005
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = null
          destination_port_ranges      = ["7190","7290","7180","7280","7120","7281","8210","8211","7101","7001","7003","7210"]
          source_address_prefix        = "10.12.12.0/24"
          source_address_prefixes      = null
          destination_address_prefix   = "*"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "ingress-ssh-jump-to-app-subnet"
          description                  = "Ingress SSH traffic from Jump subnet to app subnet"
          priority                     = 1050
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "22"
          destination_port_ranges      = null
          source_address_prefix        = "10.12.0.0/24"
          source_address_prefixes      = null
          destination_address_prefix   = "*"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "block-internet"
          description                  = "Block all Internet Traffic per"
          priority                     = 4000
          direction                    = "Outbound"
          access                       = "Deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "Internet"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "inbound-from-azure-load-balancer"
          description                  = "Allow inbound from Azure Load Balancer"
          priority                     = 4040
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "block-inbound-traffic"
          description                  = "Block all remaining inbound traffic"
          priority                     = 4050
          direction                    = "Inbound"
          access                       = "Deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "block-outbound-traffic"
          description                  = "Block all remaining inbound traffic"
          priority                     = 4050
          direction                    = "Outbound"
          access                       = "Deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        }
      ]
    },
     nsg12 = {
      name = "attbc-22805-poc-relay-non-review-nsg-01"
      security_rules = [
        {
          name                         = "app-to-azure-monitor-log-analytics"
          description                  = "Egress all traffic to Azure Monitor Service"
          priority                     = 200
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_ranges      = ["80","443"]
          destination_port_range       = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "AzureMonitor"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-to-Guest-And-Hybrid-Management"
          description                  = "Egress all traffic to Guest and Hybird Management Service"
          priority                     = 205
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "443"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "GuestAndHybridManagement"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-to-Azure-Active-Directory"
          description                  = "Egress all traffic to Azure Active Directory Service"
          priority                     = 210
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "AzureActiveDirectory"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-to-Azure-KV-Storage-Squid-PE"
          description                  = "Egress from app subnet to the Azure Key Vault Private Endpoint, Storage Private Endpoint(s), SQUID Proxy Private Endpoint"
          priority                     = 215
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "443"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.14.0/24" 
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-sunet-to-db-subnet"
          description                  = "Egress from app subnet to db subnet"
          priority                     = 220
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "3306"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.3.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "non-https-traffic-nva-to-conexus"
          description                  = "Egress non-https traffic through NVA proxy back to Conexus"
          priority                     = 225
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.14.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "ingress-traffic-web-to-app-subnet"
          description                  = "Ingress traffic from web tier to app1 tier for application functionality"
          priority                     = 1005
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = null
          destination_port_ranges      = ["7190","7290","7180","7280","7120","7281","8210","8211","7101","7001","7003","7210"]
          source_address_prefix        = "10.12.12.0/24"
          source_address_prefixes      = null
          destination_address_prefix   = "*"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "ingress-ssh-jump-to-app-subnet"
          description                  = "Ingress SSH traffic from Jump subnet to app subnet"
          priority                     = 1050
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "22"
          destination_port_ranges      = null
          source_address_prefix        = "10.12.0.0/24"
          source_address_prefixes      = null
          destination_address_prefix   = "*"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "block-internet"
          description                  = "Block all Internet Traffic per"
          priority                     = 4000
          direction                    = "Outbound"
          access                       = "Deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "Internet"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "inbound-from-azure-load-balancer"
          description                  = "Allow inbound from Azure Load Balancer"
          priority                     = 4040
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "block-inbound-traffic"
          description                  = "Block all remaining inbound traffic"
          priority                     = 4050
          direction                    = "Inbound"
          access                       = "Deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "block-outbound-traffic"
          description                  = "Block all remaining inbound traffic"
          priority                     = 4050
          direction                    = "Outbound"
          access                       = "Deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        }
      ]
    },
    nsg13 = {
      name = "attbc-22805-poc-db-nsg-01"
      security_rules = [
        {
          name                         = "db-to-azure-monitor-log-analytics"
          description                  = "Egress all traffic to Azure Monitor Service"
          priority                     = 200
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_ranges      = ["80","443"]
          destination_port_range       = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "AzureMonitor"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "db-to-Guest-And-Hybrid-Management"
          description                  = "Egress all traffic to Guest and Hybird Management Service"
          priority                     = 205
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "443"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "GuestAndHybridManagement"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "db-to-Azure-Active-Directory"
          description                  = "Egress all traffic to Azure Active Directory Service"
          priority                     = 210
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "AzureActiveDirectory"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "db-to-Azure-KV-Storage-Squid-PE"
          description                  = "Egress from web subnet to the Azure Key Vault Private Endpoint, Storage Private Endpoint(s), SQUID Proxy Private Endpoint"
          priority                     = 215
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "443"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.11.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "db-subnet-to-app-subnet1"
          description                  = "Ingress from app subnet1 to db subnet"
          priority                     = 1005
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "3306"
          destination_port_ranges      = null
          source_address_prefix        = "10.12.2.0/24"
          source_address_prefixes      = null
          destination_address_prefix   = "*"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "db-subnet-to-app-subnet2"
          description                  = "Ingress from app subnet2 to db subnet"
          priority                     = 1010
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "3306"
          destination_port_ranges      = null
          source_address_prefix        = "10.12.0.0/24"
          source_address_prefixes      = null
          destination_address_prefix   = "*"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "db-subnet-to-app-subnet3"
          description                  = "Ingress from app subnet3 to db subnet"
          priority                     = 1015
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "3306"
          destination_port_ranges      = null
          source_address_prefix        = "10.12.1.0/24"
          source_address_prefixes      = null
          destination_address_prefix   = "*"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "db-subnet-to-app-subnet4"
          description                  = "Ingress from app subnet4 to db subnet"
          priority                     = 1020
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "3306"
          destination_port_ranges      = null
          source_address_prefix        = "10.12.2.0/24"
          source_address_prefixes      = null
          destination_address_prefix   = "*"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "db-subnet-to-app-subnet5"
          description                  = "Ingress from app subnet5 to db subnet"
          priority                     = 1025
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "3306"
          destination_port_ranges      = null
          source_address_prefix        = "10.12.3.0/24"
          source_address_prefixes      = null
          destination_address_prefix   = "*"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "db-subnet-to-app-subnet6"
          description                  = "Ingress from app subnet6 to db subnet"
          priority                     = 1030
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "3306"
          destination_port_ranges      = null
          source_address_prefix        = "10.12.4.0/24"
          source_address_prefixes      = null
          destination_address_prefix   = "*"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "db-subnet-to-app-subnet7"
          description                  = "Ingress from app subnet7 to db subnet"
          priority                     = 1035
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "3306"
          destination_port_ranges      = null
          source_address_prefix        = "10.12.5.0/24"
          source_address_prefixes      = null
          destination_address_prefix   = "*"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "db-subnet-to-app-subnet8"
          description                  = "Ingress from app subnet8 to db subnet"
          priority                     = 1040
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "3306"
          destination_port_ranges      = null
          source_address_prefix        = "10.12.8.0/24"
          source_address_prefixes      = null
          destination_address_prefix   = "*"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "db-subnet-to-app-subnet9"
          description                  = "Ingress from app subnet9 to db subnet"
          priority                     = 1045
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "3306"
          destination_port_ranges      = null
          source_address_prefix        = "10.12.10.0/24"
          source_address_prefixes      = null
          destination_address_prefix   = "*"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "ssh-traffic-jump-db-subnet"
          description                  = "Ingress SSH traffic from Jump subnet to db subnet"
          priority                     = 1050
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "22"
          destination_port_ranges      = null
          source_address_prefix        = "10.12.0.0/24"
          source_address_prefixes      = null
          destination_address_prefix   = "*"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "block-internet-traffic"
          description                  = "Block all Internet Traffic"
          priority                     = 4000
          direction                    = "Outbound"
          access                       = "deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "Internet"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "inbound-from-azure-load-balancer"
          description                  = "Allow inbound from Azure Load Balancer"
          priority                     = 4040
          direction                    = "Inbound"
          access                       = "allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "block-remaining-internet-traffic"
          description                  = "Block all remaining inbound traffic that does not match any previous rule"
          priority                     = 4050
          direction                    = "Inbound"
          access                       = "deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "block-remaining-outbound-traffic"
          description                  = "Block all remaining outbound traffic that does not match any previous rule"
          priority                     = 4050
          direction                    = "Outbound"
          access                       = "deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        }
      ]
    },
     nsg14 = {
      name = "attbc-22805-poc-Nginx-01-nsg-01"
      security_rules = [
        {
          name                         = "web-to-azure-monitor-log-analytics"
          description                  = "Egress all traffic to Azure Monitor Service"
          priority                     = 200
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_ranges      = ["80","443"]
          destination_port_range       = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "AzureMonitor"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "web-to-Guest-And-Hybrid-Management"
          description                  = "Egress all traffic to Guest and Hybird Management Service"
          priority                     = 205
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "443"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "GuestAndHybridManagement"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "web-to-Azure-Active-Directory"
          description                  = "Egress all traffic to Azure Active Directory Service"
          priority                     = 210
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "AzureActiveDirectory"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "web-to-Azure-KV-Storage-Squid-PE"
          description                  = "Egress from web subnet to the Azure Key Vault Private Endpoint, Storage Private Endpoint(s), SQUID Proxy Private Endpoint"
          priority                     = 215
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "443"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.11.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "web-subnet-to-app-subnet1"
          description                  = "Egress from web subnet to the app subnet1 for application functionality"
          priority                     = 220
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp" 
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = null
          destination_port_ranges      = ["7180","7190","7120","7280","7281","7290"]
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.2.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "web-subnet-to-app-subnet2"
          description                  = "Egress from web subnet to the app subnet2 for application functionality"
          priority                     = 225
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp" 
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = null 
          destination_port_ranges      = ["7180","7190","7120","7280","7281","7290"]
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.0.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "web-subnet-to-app-subnet3"
          description                  = "Egress from web subnet to the app subnet3 for application functionality"
          priority                     = 230
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp" 
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = null 
          destination_port_ranges      = ["7180","7190","7120","7280","7281","7290"]
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.1.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "web-subnet-to-app-subnet4"
          description                  = "Egress from web subnet to the app subnet4 for application functionality"
          priority                     = 235
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp" 
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = null 
          destination_port_ranges      = ["7180","7190","7120","7280","7281","7290"]
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.2.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "web-subnet-to-app-subnet5"
          description                  = "Egress from web subnet to the app subnet5 for application functionality"
          priority                     = 240
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp" 
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = null
          destination_port_ranges      = ["7180","7190","7120","7280","7281","7290"]
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.3.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "web-subnet-to-app-subnet6"
          description                  = "Egress from web subnet to the app subnet6 for application functionality"
          priority                     = 245
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp" 
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = null 
          destination_port_ranges      = ["7180","7190","7120","7280","7281","7290"]
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.4.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "web-subnet-to-app-subnet7"
          description                  = "Egress from web subnet to the app subnet7 for application functionality"
          priority                     = 250
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp" 
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = null 
          destination_port_ranges      = ["7180","7190","7120","7280","7281","7290"]
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.5.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "web-subnet-to-app-subnet8"
          description                  = "Egress from web subnet to the app subnet8 for application functionality"
          priority                     = 255
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp" 
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = null
          destination_port_ranges      = ["7180","7190","7120","7280","7281","7290"]
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.8.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "web-subnet-to-app-subnet9"
          description                  = "Egress from web subnet to the app subnet9 for application functionality"
          priority                     = 260
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp" 
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = null 
          destination_port_ranges      = ["7180","7190","7120","7280","7281","7290"]
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "10.12.10.0/24"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "https-traffic-connexus-to-web-subnet"
          description                  = "Ingress https traffic from Conexus to web subnet"
          priority                     = 1000
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*" 
          source_port_ranges           = null
          destination_port_range       = "443"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "*"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "ssh-jump-to-web-subnet"
          description                  = "Ingress SSH traffic from Jump subnet to web subnet"
          priority                     = 1010
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "22"
          destination_port_ranges      = null
          source_address_prefix        = "10.12.0.0/24"
          source_address_prefixes      = null
          destination_address_prefix   = "*"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "block-internet-traffic"
          description                  = "Block all Internet Traffic"
          priority                     = 4000
          direction                    = "Outbound"
          access                       = "deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "Internet"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "inbound-from-azure-load-balancer"
          description                  = "Allow inbound from Azure Load Balancer"
          priority                     = 4040
          direction                    = "Inbound"
          access                       = "allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "block-remaining-internet-traffic"
          description                  = "Block all remaining inbound traffic that does not match any previous rule"
          priority                     = 4050
          direction                    = "Inbound"
          access                       = "deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "block-remaining-outbound-traffic"
          description                  = "Block all remaining outbound traffic that does not match any previous rule"
          priority                     = 4050
          direction                    = "Outbound"
          access                       = "deny"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "VirtualNetwork"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        }
      ]
    },
    nsg15 = {
      name = "attbc-22805-poc-sftp-nsg-01"
      security_rules = [
        {
          name                         = "app-to-azure-monitor-log-analytics"
          description                  = "Egress all traffic to Azure Monitor Service"
          priority                     = 200
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_ranges      = ["80","443"]
          destination_port_range       = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "AzureMonitor"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-to-Guest-And-Hybrid-Management"
          description                  = "Egress all traffic to Guest and Hybird Management Service"
          priority                     = 205
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "443"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "GuestAndHybridManagement"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "app-to-Azure-Active-Directory"
          description                  = "Egress all traffic to Azure Active Directory Service"
          priority                     = 210
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "AzureActiveDirectory"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "https-and-http-traffic-to-sftp"
          description                  = "Ingress https traffic from Conexus to sftp subnet"
          priority                     = 1000
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_ranges           = ["443","80"]
          source_port_range            = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "*"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
        {
          name                         = "ssh-jump-to-sftp"
          description                  = "Ingress ssh from Jump Subnet to sftp Subnet"
          priority                     = 1010
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "22"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "10.12.0.0/24"
          source_address_prefixes      = null
          destination_address_prefix   = "*"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        },
         {
          name                         = "sftp-fileshare"
          description                  = "SFTP access for fileshare"
          priority                     = 1030
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "445"
          source_port_ranges           = null
          destination_port_range       = "*"
          destination_port_ranges      = null
          source_address_prefix        = "*"
          source_address_prefixes      = null
          destination_address_prefix   = "*"
          destination_address_prefixes = null
          source_application_security_group_names      = []
          destination_application_security_group_names = []
        }
      ]
    }   
  }


# - Base Infrastructure Log Analytics Workspace 

base_infra_log_analytics_name = "wus2-attbc-poc-baseinfra-01"
sku                           = "PerGB2018"
retention_in_days             = 30
log_analytics_workspace       = null

# - Base Infrastructure Storage Account

base_infra_storage_accounts = {
  sa1 = {
    name                    = "attbcpocstdgatt02"
    sku                     = "Standard_RAGRS"
    account_kind            = null
    access_tier             = null
    assign_identity         = false
    cmk_enable              = false
    network_rules           = null
    enable_large_file_share = false
  },
  sa2 = {
    name                    = "attbcpocsanatt02"
    sku                     = "Standard_RAGRS"
    account_kind            = null
    access_tier             = null
    assign_identity         = false
    cmk_enable              = false
    network_rules           = null
    enable_large_file_share = false
  },
  sa3 = {
    name                    = "attbcpocstatt02"
    sku                     = "Standard_RAGRS"
    account_kind            = null
    access_tier             = null
    assign_identity         = false
    cmk_enable              = false
    network_rules           = null
    enable_large_file_share = false
  }
}

# - Key Vault

base_infra_keyvault_name = "wus2-attbc-poc-kv-001"

network_acls = {
  bypass                     = "AzureServices"
  default_action             = "Deny"
  ip_rules                   = ["0.0.0.0/0"]
  virtual_network_subnet_ids = []
}

# - Private LoadBalancer

zones = ["1"]

Lbs = {
  loadbalancer1 = {
    name = "westus2-22805-poc-jump-lb-01"            # Jump
    frontend_ips = [
      {
        name        = "attbc-poc-fe-jump-lb-01" 
        subnet_name = "westus2-22805-poc-vnet-jump-snet" # Name of the Subnet
        static_ip   = null           # "10.0.1.4" # Set null to get dynamic IP or delete this line
      }
    ]
    backend_pool_names = ["attbc-poc-wus2-jump-backend-pool-01"]
    enable_public_ip   = false
    public_ip_name     = null
  },
   loadbalancer2 = {
    name = "westus2-22805-poc-app-lb-02"             #Review Publisher1
    frontend_ips = [
      {
        name        = "westus2-poc-fe-lb-02"
        subnet_name = "attbc-22805-poc-publisher-review-snet"
        static_ip   = null
      }
    ]
    backend_pool_names = ["attbc-poc-wus2-backend-pool-02"]
    enable_public_ip   = false
    public_ip_name     = null
  },
   loadbalancer3 = {
    name = "westus2-22805-poc-app-lb-03"             #Non Review Publisheer2
    frontend_ips = [
      {
        name        = "westus2-poc-fe-lb-03"
        subnet_name = "attbc-22805-poc-publisher-Non-review-snet"
        static_ip   = null
      }
    ]
    backend_pool_names = ["attbc-poc-wus2-backend-pool-03"]
    enable_public_ip   = false
    public_ip_name     = null
  },
   loadbalancer4 = {
    name = "westus2-22805-poc-db-lb-01"              # SQL
    frontend_ips = [
      {
        name        = "westus2-poc-db-fe-lb-01"
        subnet_name = "westus2-22805-poc-vnet-db-snet"
        static_ip   = null
      }
    ]
    backend_pool_names = ["attbc-poc-wus2-db-backend-pool-01"]
    enable_public_ip   = false
    public_ip_name     = null
  },
   loadbalancer5 = {
    name = "westus2-22805-poc-nginx-lb-01"            # Web Nginx
    frontend_ips = [
      {
        name        = "westus2-22805-poc-nginx-fe-lb-01"
        subnet_name = "westus2-22805-poc-vnet-nginx-snet-01"
        static_ip   = null
      }
    ]
    backend_pool_names = ["attbc-poc-wus2-nginx-backend-pool-01"]
    enable_public_ip   = false
    public_ip_name     = null
  },
   loadbalancer6 = {
    name = "westus2-22805-poc-nginx-lb-02"             # Nginx connected app pls
    frontend_ips = [
      {
        name        = "westus2-22805-poc-nginx-fe-lb-02"
        subnet_name = "westus2-22805-poc-vnet-nginx-snet-02"
        static_ip   = null
      }
    ]
    backend_pool_names = ["attbc-poc-wus2-nginx-backend-pool-02"]
    enable_public_ip   = false
    public_ip_name     = null
  },
   loadbalancer7 = {
    name = "westus2-poc-sftp-lb-01"                     # SFTP
    frontend_ips = [
      {
        name        = "westus2-22805-poc-sftp-fe-lb-01"
        subnet_name = "westus2-22805-poc-vnet-sftp-snet-01"
        static_ip   = null
      }
    ]
    backend_pool_names = ["attbc-poc-wus2-sftp-backend-pool-01"]
    enable_public_ip   = false
    public_ip_name     = null
  }
}

LbRules = {
  loadbalancerrules1 = {
    name                      = "jump-lb-rule"
    lb_key                    = "loadbalancer1"        #Key of the Load Balancer
    frontend_ip_name          = "attbc-poc-fe-jump-lb-01" #It must equals the Lbs front end
    backend_pool_name         = "attbc-poc-wus2-jump-backend-pool-01"
    lb_protocol               = null
    lb_port                   = "22"
    probe_port                = "22"
    backend_port              = "22"
    enable_floating_ip        = null
    disable_outbound_snat     = null
    enable_tcp_reset          = null
    probe_protocol            = "Tcp"
    request_path              = "/"
    probe_interval            = 15
    probe_unhealthy_threshold = 2
    load_distribution         = "SourceIPProtocol"
    idle_timeout_in_minutes   = 5
  },
    loadbalancerrules2 = {
    name                      = "App-lb-rule"
    lb_key                    = "loadbalancer6"        #Key of the Load Balancer
    frontend_ip_name          = "westus2-22805-poc-nginx-fe-lb-02" #It must equals the Lbs front end
    backend_pool_name         = "attbc-poc-wus2-nginx-backend-pool-02"
    lb_protocol               = null
    lb_port                   = "443"
    probe_port                = "443"
    backend_port              = "443"
    enable_floating_ip        = null
    disable_outbound_snat     = null
    enable_tcp_reset          = null
    probe_protocol            = "Tcp"
    request_path              = "/"
    probe_interval            = 15
    probe_unhealthy_threshold = 2
    load_distribution         = "SourceIPProtocol"
    idle_timeout_in_minutes   = 5
  },
    loadbalancerrules3 = {
    name                      = "DB-lb-rule"
    lb_key                    = "loadbalancer4"        #Key of the Load Balancer
    frontend_ip_name          = "westus2-poc-db-fe-lb-01" #It must equals the Lbs front end
    backend_pool_name         = "attbc-poc-wus2-db-backend-pool-01"
    lb_protocol               = null
    lb_port                   = "443"
    probe_port                = "443"
    backend_port              = "443"
    enable_floating_ip        = null
    disable_outbound_snat     = null
    enable_tcp_reset          = null
    probe_protocol            = "Tcp"
    request_path              = "/"
    probe_interval            = 15
    probe_unhealthy_threshold = 2
    load_distribution         = "SourceIPProtocol"
    idle_timeout_in_minutes   = 5
  }
}

# - Linux VMs
jump_vms = {
  vm1 = {
    name                             = "attbc-jump-vm-001"
    vm_size                          = "Standard_D8s_v3"
    assign_identity                  = true
    lb_backend_pool_names            = ["attbc-poc-wus2-jump-backend-pool-01"]
    lb_nat_rule_names                = null
    app_security_group_names         = null
    app_gateway_name                 = null
    zone                             = "1"
    subnet_name                      = "westus2-22805-poc-vnet-jump-snet"    #(Mandatory) Id of the Subnet   
    disable_password_authentication  = true
    source_image_reference_offer     = "RHEL"   # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer
    source_image_reference_publisher = "RedHat" # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer  
    source_image_reference_sku       = "7-LVM"  # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer 
    source_image_reference_version   = "Latest" # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer             
    storage_os_disk_caching          = "ReadWrite"
    managed_disk_type                = "Premium_LRS"
    disk_size_gb                     = null
    write_accelerator_enabled        = null
    internal_dns_name_label          = null
    enable_ip_forwarding             = null # set it to true if you want to enable IP forwarding on the NIC
    enable_accelerated_networking    = null # set it to true if you want to enable accelerated networking
    dns_servers                      = null
    static_ip                        = null
    recovery_services_vault_key      = "rsv1"
    enable_cmk_disk_encryption       = true                                   # set it to true if you want to enable disk encryption using customer managed key
    custom_data_path                 = null # Optional
    custom_data_args                 = null
    diagnostics_storage_config_path  = null # Optional
    custom_script                    = null
  }
}

app_vms = {
  vm1 = {
    name                             = "attbc-author-review-vm-001"
    vm_size                          = "Standard_E16s_v3"
    assign_identity                  = true
    lb_backend_pool_names            = ["attbc-poc-wus2-nginx-backend-pool-02"]
    lb_nat_rule_names                = null
    app_security_group_names         = null
    app_gateway_name                 = null
    zone                             = "1"
    subnet_name                      = "attbc-22805-poc-author-review-snet"    #(Mandatory) Id of the Subnet   
    disable_password_authentication  = true
    source_image_reference_offer     = "RHEL"   # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer
    source_image_reference_publisher = "RedHat" # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer  
    source_image_reference_sku       = "7-LVM"  # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer 
    source_image_reference_version   = "Latest" # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer             
    storage_os_disk_caching          = "ReadWrite"
    managed_disk_type                = "Premium_LRS"
    disk_size_gb                     = null
    write_accelerator_enabled        = null
    internal_dns_name_label          = null
    enable_ip_forwarding             = null # set it to true if you want to enable IP forwarding on the NIC
    enable_accelerated_networking    = null # set it to true if you want to enable accelerated networking
    dns_servers                      = null
    static_ip                        = null
    recovery_services_vault_key      = "rsv1"
    enable_cmk_disk_encryption       = true # set it to true if you want to enable disk encryption using customer managed key
    custom_data_path                 = null # Optional
    custom_data_args                 = null
    diagnostics_storage_config_path  = null # Optional
    custom_script                    = null
  },
  vm2 = {
    name                             = "attbc-author-review-vm-002"
    vm_size                          = "Standard_E16s_v3"
    assign_identity                  = true
    lb_backend_pool_names            = ["attbc-poc-wus2-nginx-backend-pool-02"]
    lb_nat_rule_names                = null
    app_security_group_names         = null
    app_gateway_name                 = null
    zone                             = "2"
    subnet_name                      = "attbc-22805-poc-author-review-snet"    #(Mandatory) Id of the Subnet   
    disable_password_authentication  = true
    source_image_reference_offer     = "RHEL"   # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer
    source_image_reference_publisher = "RedHat" # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer  
    source_image_reference_sku       = "7-LVM"  # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer 
    source_image_reference_version   = "Latest" # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer             
    storage_os_disk_caching          = "ReadWrite"
    managed_disk_type                = "Premium_LRS"
    disk_size_gb                     = null
    write_accelerator_enabled        = null
    internal_dns_name_label          = null
    enable_ip_forwarding             = null # set it to true if you want to enable IP forwarding on the NIC
    enable_accelerated_networking    = null # set it to true if you want to enable accelerated networking
    dns_servers                      = null
    static_ip                        = null
    recovery_services_vault_key      = "rsv1"
    enable_cmk_disk_encryption       = true                                   # set it to true if you want to enable disk encryption using customer managed key
    custom_data_path                 = null # Optional
    custom_data_args                 = null
    diagnostics_storage_config_path  = null # Optional
    custom_script                    = null
  },
  vm3 = {
    name                             = "attbc-author-non-review-vm-001"
    vm_size                          = "Standard_E16s_v3"
    assign_identity                  = true
    lb_backend_pool_names            = ["attbc-poc-wus2-nginx-backend-pool-02"]
    lb_nat_rule_names                = null
    app_security_group_names         = null
    app_gateway_name                 = null
    zone                             = "1"
    subnet_name                      = "attbc-22805-poc-publisher-Non-review-snet"    #(Mandatory) Id of the Subnet   
    disable_password_authentication  = true
    source_image_reference_offer     = "RHEL"   # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer
    source_image_reference_publisher = "RedHat" # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer  
    source_image_reference_sku       = "7-LVM"  # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer 
    source_image_reference_version   = "Latest" # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer             
    storage_os_disk_caching          = "ReadWrite"
    managed_disk_type                = "Premium_LRS"
    disk_size_gb                     = null
    write_accelerator_enabled        = null
    internal_dns_name_label          = null
    enable_ip_forwarding             = null # set it to true if you want to enable IP forwarding on the NIC
    enable_accelerated_networking    = null # set it to true if you want to enable accelerated networking
    dns_servers                      = null
    static_ip                        = null
    recovery_services_vault_key      = "rsv1"
    enable_cmk_disk_encryption       = true                                   # set it to true if you want to enable disk encryption using customer managed key
    custom_data_path                 = null # Optional
    custom_data_args                 = null
    diagnostics_storage_config_path  = null # Optional
    custom_script                    = null
  },
  vm4 = {
    name                             = "attbc-author-non-review-vm-002"
    vm_size                          = "Standard_E16s_v3"
    assign_identity                  = true
    lb_backend_pool_names            = ["attbc-poc-wus2-nginx-backend-pool-02"]
    lb_nat_rule_names                = null
    app_security_group_names         = null
    app_gateway_name                 = null
    zone                             = "2"
    subnet_name                      = "attbc-22805-poc-publisher-Non-review-snet"    #(Mandatory) Id of the Subnet   
    disable_password_authentication  = true
    source_image_reference_offer     = "RHEL"   # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer
    source_image_reference_publisher = "RedHat" # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer  
    source_image_reference_sku       = "7-LVM"  # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer 
    source_image_reference_version   = "Latest" # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer             
    storage_os_disk_caching          = "ReadWrite"
    managed_disk_type                = "Premium_LRS"
    disk_size_gb                     = null
    write_accelerator_enabled        = null
    internal_dns_name_label          = null
    enable_ip_forwarding             = null # set it to true if you want to enable IP forwarding on the NIC
    enable_accelerated_networking    = null # set it to true if you want to enable accelerated networking
    dns_servers                      = null
    static_ip                        = null
    recovery_services_vault_key      = "rsv1"
    enable_cmk_disk_encryption       = true                                   # set it to true if you want to enable disk encryption using customer managed key
    custom_data_path                 = null # Optional
    custom_data_args                 = null
    diagnostics_storage_config_path  = null # Optional
    custom_script                    = null
  },
  vm5 = {
    name                             = "attbc-publisher-review-vm-001"
    vm_size                          = "Standard_D16s_v3"
    assign_identity                  = true
    lb_backend_pool_names            = ["attbc-poc-wus2-backend-pool-02"]
    lb_nat_rule_names                = null
    app_security_group_names         = null
    app_gateway_name                 = null
    zone                             = "1"
    subnet_name                      = "attbc-22805-poc-publisher-review-snet"    #(Mandatory) Id of the Subnet   
    disable_password_authentication  = true
    source_image_reference_offer     = "RHEL"   # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer
    source_image_reference_publisher = "RedHat" # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer  
    source_image_reference_sku       = "7-LVM"  # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer 
    source_image_reference_version   = "Latest" # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer             
    storage_os_disk_caching          = "ReadWrite"
    managed_disk_type                = "Premium_LRS"
    disk_size_gb                     = null
    write_accelerator_enabled        = null
    internal_dns_name_label          = null
    enable_ip_forwarding             = null # set it to true if you want to enable IP forwarding on the NIC
    enable_accelerated_networking    = null # set it to true if you want to enable accelerated networking
    dns_servers                      = null
    static_ip                        = null
    recovery_services_vault_key      = "rsv1"
    enable_cmk_disk_encryption       = true                                   # set it to true if you want to enable disk encryption using customer managed key
    custom_data_path                 = null # Optional
    custom_data_args                 = null
    diagnostics_storage_config_path  = null # Optional
    custom_script                    = null
  },
  vm6 = {
    name                             = "attbc-publisher-review-vm-002"
    vm_size                          = "Standard_D16s_v3"
    assign_identity                  = true
    lb_backend_pool_names            = ["attbc-poc-wus2-backend-pool-02"]
    lb_nat_rule_names                = null
    app_security_group_names         = null
    app_gateway_name                 = null
    zone                             = "2"
    subnet_name                      = "attbc-22805-poc-publisher-review-snet"    #(Mandatory) Id of the Subnet   
    disable_password_authentication  = true
    source_image_reference_offer     = "RHEL"   # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer
    source_image_reference_publisher = "RedHat" # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer  
    source_image_reference_sku       = "7-LVM"  # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer 
    source_image_reference_version   = "Latest" # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer             
    storage_os_disk_caching          = "ReadWrite"
    managed_disk_type                = "Premium_LRS"
    disk_size_gb                     = null
    write_accelerator_enabled        = null
    internal_dns_name_label          = null
    enable_ip_forwarding             = null # set it to true if you want to enable IP forwarding on the NIC
    enable_accelerated_networking    = null # set it to true if you want to enable accelerated networking
    dns_servers                      = null
    static_ip                        = null
    recovery_services_vault_key      = "rsv1"
    enable_cmk_disk_encryption       = true                                   # set it to true if you want to enable disk encryption using customer managed key
    custom_data_path                 = null # Optional
    custom_data_args                 = null
    diagnostics_storage_config_path  = null # Optional
    custom_script                    = null
  },
  vm7 = {
    name                             = "attbc-publisher-review-vm-003"
    vm_size                          = "Standard_D16s_v3"
    assign_identity                  = true
    lb_backend_pool_names            = ["attbc-poc-wus2-backend-pool-02"]
    lb_nat_rule_names                = null
    app_security_group_names         = null
    app_gateway_name                 = null
    zone                             = "3"
    subnet_name                      = "attbc-22805-poc-publisher-review-snet"    #(Mandatory) Id of the Subnet   
    disable_password_authentication  = true
    source_image_reference_offer     = "RHEL"   # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer
    source_image_reference_publisher = "RedHat" # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer  
    source_image_reference_sku       = "7-LVM"  # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer 
    source_image_reference_version   = "Latest" # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer             
    storage_os_disk_caching          = "ReadWrite"
    managed_disk_type                = "Premium_LRS"
    disk_size_gb                     = null
    write_accelerator_enabled        = null
    internal_dns_name_label          = null
    enable_ip_forwarding             = null # set it to true if you want to enable IP forwarding on the NIC
    enable_accelerated_networking    = null # set it to true if you want to enable accelerated networking
    dns_servers                      = null
    static_ip                        = null
    recovery_services_vault_key      = "rsv1"
    enable_cmk_disk_encryption       = true                                   # set it to true if you want to enable disk encryption using customer managed key
    custom_data_path                 = null # Optional
    custom_data_args                 = null
    diagnostics_storage_config_path  = null # Optional
    custom_script                    = null
  },
  vm8 = {
    name                             = "attbc-publisher-non-review-vm-001"
    vm_size                          = "Standard_D16s_v3"
    assign_identity                  = true
    lb_backend_pool_names            = ["attbc-poc-wus2-backend-pool-03"]
    lb_nat_rule_names                = null
    app_security_group_names         = null
    app_gateway_name                 = null
    zone                             = "1"
    subnet_name                      = "attbc-22805-poc-publisher-Non-review-snet"    #(Mandatory) Id of the Subnet   
    disable_password_authentication  = true
    source_image_reference_offer     = "RHEL"   # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer
    source_image_reference_publisher = "RedHat" # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer  
    source_image_reference_sku       = "7-LVM"  # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer 
    source_image_reference_version   = "Latest" # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer             
    storage_os_disk_caching          = "ReadWrite"
    managed_disk_type                = "Premium_LRS"
    disk_size_gb                     = null
    write_accelerator_enabled        = null
    internal_dns_name_label          = null
    enable_ip_forwarding             = null # set it to true if you want to enable IP forwarding on the NIC
    enable_accelerated_networking    = null # set it to true if you want to enable accelerated networking
    dns_servers                      = null
    static_ip                        = null
    recovery_services_vault_key      = "rsv1"
    enable_cmk_disk_encryption       = true                                   # set it to true if you want to enable disk encryption using customer managed key
    custom_data_path                 = null # Optional
    custom_data_args                 = null
    diagnostics_storage_config_path  = null # Optional
    custom_script                    = null
  },
  vm9 = {
    name                             = "attbc-publisher-non-review-vm-002"
    vm_size                          = "Standard_D16s_v3"
    assign_identity                  = true
    lb_backend_pool_names            = ["attbc-poc-wus2-backend-pool-03"]
    lb_nat_rule_names                = null
    app_security_group_names         = null
    app_gateway_name                 = null
    zone                             = "2"
    subnet_name                      = "attbc-22805-poc-publisher-Non-review-snet"    #(Mandatory) Id of the Subnet   
    disable_password_authentication  = true
    source_image_reference_offer     = "RHEL"   # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer
    source_image_reference_publisher = "RedHat" # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer  
    source_image_reference_sku       = "7-LVM"  # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer 
    source_image_reference_version   = "Latest" # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer             
    storage_os_disk_caching          = "ReadWrite"
    managed_disk_type                = "Premium_LRS"
    disk_size_gb                     = null
    write_accelerator_enabled        = null
    internal_dns_name_label          = null
    enable_ip_forwarding             = null # set it to true if you want to enable IP forwarding on the NIC
    enable_accelerated_networking    = null # set it to true if you want to enable accelerated networking
    dns_servers                      = null
    static_ip                        = null
    recovery_services_vault_key      = "rsv1"
    enable_cmk_disk_encryption       = true                                   # set it to true if you want to enable disk encryption using customer managed key
    custom_data_path                 = null # Optional
    custom_data_args                 = null
    diagnostics_storage_config_path  = null # Optional
    custom_script                    = null
  },
    vm10 = {
    name                             = "attbc-publisher-non-review-vm-003"
    vm_size                          = "Standard_D16s_v3"
    assign_identity                  = true
    lb_backend_pool_names            = ["attbc-poc-wus2-backend-pool-03"]
    lb_nat_rule_names                = null
    app_security_group_names         = null
    app_gateway_name                 = null
    zone                             = "3"
    subnet_name                      = "attbc-22805-poc-publisher-Non-review-snet"    #(Mandatory) Id of the Subnet   
    disable_password_authentication  = true
    source_image_reference_offer     = "RHEL"   # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer
    source_image_reference_publisher = "RedHat" # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer  
    source_image_reference_sku       = "7-LVM"  # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer 
    source_image_reference_version   = "Latest" # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer             
    storage_os_disk_caching          = "ReadWrite"
    managed_disk_type                = "Premium_LRS"
    disk_size_gb                     = null
    write_accelerator_enabled        = null
    internal_dns_name_label          = null
    enable_ip_forwarding             = null # set it to true if you want to enable IP forwarding on the NIC
    enable_accelerated_networking    = null # set it to true if you want to enable accelerated networking
    dns_servers                      = null
    static_ip                        = null
    recovery_services_vault_key      = "rsv1"
    enable_cmk_disk_encryption       = true                                   # set it to true if you want to enable disk encryption using customer managed key
    custom_data_path                 = null # Optional
    custom_data_args                 = null
    diagnostics_storage_config_path  = null # Optional
    custom_script                    = null
  },
    vm11 = {
    name                             = "attbc-processor-vm-001"
    vm_size                          = "Standard_E8-4s_v3"
    assign_identity                  = true
    lb_backend_pool_names            = ["attbc-poc-wus2-nginx-backend-pool-01"]
    lb_nat_rule_names                = null
    app_security_group_names         = null
    app_gateway_name                 = null
    zone                             = "1"
    subnet_name                      = "attbc-22805-poc-processor-snet"    #(Mandatory) Id of the Subnet   
    disable_password_authentication  = true
    source_image_reference_offer     = "RHEL"   # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer
    source_image_reference_publisher = "RedHat" # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer  
    source_image_reference_sku       = "7-LVM"  # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer 
    source_image_reference_version   = "Latest" # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer             
    storage_os_disk_caching          = "ReadWrite"
    managed_disk_type                = "Premium_LRS"
    disk_size_gb                     = null
    write_accelerator_enabled        = null
    internal_dns_name_label          = null
    enable_ip_forwarding             = null # set it to true if you want to enable IP forwarding on the NIC
    enable_accelerated_networking    = null # set it to true if you want to enable accelerated networking
    dns_servers                      = null
    static_ip                        = null
    recovery_services_vault_key      = "rsv1"
    enable_cmk_disk_encryption       = true                                   # set it to true if you want to enable disk encryption using customer managed key
    custom_data_path                 = null # Optional
    custom_data_args                 = null
    diagnostics_storage_config_path  = null # Optional
    custom_script                    = null
  },
    vm12 = {
    name                             = "attbc-dispatcher-review-vm-001"
    vm_size                          = "Standard_D8s_v3"
    assign_identity                  = true
    lb_backend_pool_names            = ["attbc-poc-wus2-nginx-backend-pool-01"]
    lb_nat_rule_names                = null
    app_security_group_names         = null
    app_gateway_name                 = null
    zone                             = "1"
    subnet_name                      = "attbc-22805-poc-dispatcher-review-snet"    #(Mandatory) Id of the Subnet   
    disable_password_authentication  = true
    source_image_reference_offer     = "RHEL"   # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer
    source_image_reference_publisher = "RedHat" # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer  
    source_image_reference_sku       = "7-LVM"  # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer 
    source_image_reference_version   = "Latest" # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer             
    storage_os_disk_caching          = "ReadWrite"
    managed_disk_type                = "Premium_LRS"
    disk_size_gb                     = null
    write_accelerator_enabled        = null
    internal_dns_name_label          = null
    enable_ip_forwarding             = null # set it to true if you want to enable IP forwarding on the NIC
    enable_accelerated_networking    = null # set it to true if you want to enable accelerated networking
    dns_servers                      = null
    static_ip                        = null
    recovery_services_vault_key      = "rsv1"
    enable_cmk_disk_encryption       = true                                   # set it to true if you want to enable disk encryption using customer managed key
    custom_data_path                 = null # Optional
    custom_data_args                 = null
    diagnostics_storage_config_path  = null # Optional
    custom_script                    = null
  },
    vm13 = {
    name                             = "attbc-dispatcher-non-review-vm-001"
    vm_size                          = "Standard_D8s_v3"
    assign_identity                  = true
    lb_backend_pool_names            = ["attbc-poc-wus2-nginx-backend-pool-01"]
    lb_nat_rule_names                = null
    app_security_group_names         = null
    app_gateway_name                 = null
    zone                             = "1"
    subnet_name                      = "attbc-22805-poc-dispatcher-Non-review-snet"    #(Mandatory) Id of the Subnet   
    disable_password_authentication  = true
    source_image_reference_offer     = "RHEL"   # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer
    source_image_reference_publisher = "RedHat" # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer  
    source_image_reference_sku       = "7-LVM"  # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer 
    source_image_reference_version   = "Latest" # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer             
    storage_os_disk_caching          = "ReadWrite"
    managed_disk_type                = "Premium_LRS"
    disk_size_gb                     = null
    write_accelerator_enabled        = null
    internal_dns_name_label          = null
    enable_ip_forwarding             = null # set it to true if you want to enable IP forwarding on the NIC
    enable_accelerated_networking    = null # set it to true if you want to enable accelerated networking
    dns_servers                      = null
    static_ip                        = null
    recovery_services_vault_key      = "rsv1"
    enable_cmk_disk_encryption       = true                                   # set it to true if you want to enable disk encryption using customer managed key
    custom_data_path                 = null # Optional
    custom_data_args                 = null
    diagnostics_storage_config_path  = null # Optional
    custom_script                    = null
  },
    vm14 = {
    name                             = "attbc-nginx-vm-001" #web tier
    vm_size                          = "Standard_D8s_v3"
    assign_identity                  = true
    lb_backend_pool_names            = ["attbc-poc-wus2-nginx-backend-pool-01"] 
    lb_nat_rule_names                = null
    app_security_group_names         = null
    app_gateway_name                 = null
    zone                             = "1"
    subnet_name                      = "westus2-22805-poc-vnet-nginx-snet-01"    #(Mandatory) Id of the Subnet   
    disable_password_authentication  = true
    source_image_reference_offer     = "RHEL"   # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer
    source_image_reference_publisher = "RedHat" # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer  
    source_image_reference_sku       = "7-LVM"  # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer 
    source_image_reference_version   = "Latest" # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer             
    storage_os_disk_caching          = "ReadWrite"
    managed_disk_type                = "Premium_LRS"
    disk_size_gb                     = null
    write_accelerator_enabled        = null
    internal_dns_name_label          = null
    enable_ip_forwarding             = null # set it to true if you want to enable IP forwarding on the NIC
    enable_accelerated_networking    = null # set it to true if you want to enable accelerated networking
    dns_servers                      = null
    static_ip                        = null
    recovery_services_vault_key      = "rsv1"
    enable_cmk_disk_encryption       = true                                   # set it to true if you want to enable disk encryption using customer managed key
    custom_data_path                 = null # Optional
    custom_data_args                 = null
    diagnostics_storage_config_path  = null # Optional
    custom_script                    = null
  },
  vm15 = {
    name                             = "attbc-nginx-vm-002"
    vm_size                          = "Standard_D8s_v3"
    assign_identity                  = true
    lb_backend_pool_names            = ["attbc-poc-wus2-nginx-backend-pool-02"]
    lb_nat_rule_names                = null
    app_security_group_names         = null
    app_gateway_name                 = null
    zone                             = "1"
    subnet_name                      = "westus2-22805-poc-vnet-nginx-snet-02"    #(Mandatory) Id of the Subnet   
    disable_password_authentication  = true
    source_image_reference_offer     = "RHEL"   # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer
    source_image_reference_publisher = "RedHat" # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer  
    source_image_reference_sku       = "7-LVM"  # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer 
    source_image_reference_version   = "Latest" # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer             
    storage_os_disk_caching          = "ReadWrite"
    managed_disk_type                = "Premium_LRS"
    disk_size_gb                     = null
    write_accelerator_enabled        = null
    internal_dns_name_label          = null
    enable_ip_forwarding             = null # set it to true if you want to enable IP forwarding on the NIC
    enable_accelerated_networking    = null # set it to true if you want to enable accelerated networking
    dns_servers                      = null
    static_ip                        = null
    recovery_services_vault_key      = "rsv1"
    enable_cmk_disk_encryption       = true                                   # set it to true if you want to enable disk encryption using customer managed key
    custom_data_path                 = null # Optional
    custom_data_args                 = null
    diagnostics_storage_config_path  = null # Optional
    custom_script                    = null
  },
  vm16 = {
    name                             = "attbc-relay-vm-001"
    vm_size                          = "Standard_D8s_v3"
    assign_identity                  = true
    lb_backend_pool_names            = ["attbc-poc-wus2-nginx-backend-pool-02"]
    lb_nat_rule_names                = null
    app_security_group_names         = null
    app_gateway_name                 = null
    zone                             = "1"
    subnet_name                      = "westus2-22805-poc-vnet-nginx-snet-02"    #(Mandatory) Id of the Subnet   
    disable_password_authentication  = true
    source_image_reference_offer     = "RHEL"   # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer
    source_image_reference_publisher = "RedHat" # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer  
    source_image_reference_sku       = "7-LVM"  # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer 
    source_image_reference_version   = "Latest" # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer             
    storage_os_disk_caching          = "ReadWrite"
    managed_disk_type                = "Premium_LRS"
    disk_size_gb                     = null
    write_accelerator_enabled        = null
    internal_dns_name_label          = null
    enable_ip_forwarding             = null # set it to true if you want to enable IP forwarding on the NIC
    enable_accelerated_networking    = null # set it to true if you want to enable accelerated networking
    dns_servers                      = null
    static_ip                        = null
    recovery_services_vault_key      = "rsv1"
    enable_cmk_disk_encryption       = true                                   # set it to true if you want to enable disk encryption using customer managed key
    custom_data_path                 = null # Optional
    custom_data_args                 = null
    diagnostics_storage_config_path  = null # Optional
    custom_script                    = null
  },
  vm17 = {
    name                             = "attbc-non-review-relay-vm-001"
    vm_size                          = "Standard_D8s_v3"
    assign_identity                  = true
    lb_backend_pool_names            = ["attbc-poc-wus2-nginx-backend-pool-02"]
    lb_nat_rule_names                = null
    app_security_group_names         = null
    app_gateway_name                 = null
    zone                             = "1"
    subnet_name                      = "westus2-22805-poc-vnet-nginx-snet-02"    #(Mandatory) Id of the Subnet   
    disable_password_authentication  = true
    source_image_reference_offer     = "RHEL"   # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer
    source_image_reference_publisher = "RedHat" # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer  
    source_image_reference_sku       = "7-LVM"  # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer 
    source_image_reference_version   = "Latest" # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer             
    storage_os_disk_caching          = "ReadWrite"
    managed_disk_type                = "Premium_LRS"
    disk_size_gb                     = null
    write_accelerator_enabled        = null
    internal_dns_name_label          = null
    enable_ip_forwarding             = null # set it to true if you want to enable IP forwarding on the NIC
    enable_accelerated_networking    = null # set it to true if you want to enable accelerated networking
    dns_servers                      = null
    static_ip                        = null
    recovery_services_vault_key      = "rsv1"
    enable_cmk_disk_encryption       = true                                   # set it to true if you want to enable disk encryption using customer managed key
    custom_data_path                 = null # Optional
    custom_data_args                 = null
    diagnostics_storage_config_path  = null # Optional
    custom_script                    = null
  },
  vm18 = {
    name                             = "attbc-sftp-vm-001"
    vm_size                          = "Standard_D8s_v3"
    assign_identity                  = true
    lb_backend_pool_names            = ["attbc-poc-wus2-sftp-backend-pool-01"]
    lb_nat_rule_names                = null
    app_security_group_names         = null
    app_gateway_name                 = null
    zone                             = "1"
    subnet_name                      = "westus2-22805-poc-vnet-nginx-snet-02"    #(Mandatory) Id of the Subnet   
    disable_password_authentication  = true
    source_image_reference_offer     = "RHEL"   # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer
    source_image_reference_publisher = "RedHat" # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer  
    source_image_reference_sku       = "7-LVM"  # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer 
    source_image_reference_version   = "Latest" # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer             
    storage_os_disk_caching          = "ReadWrite"
    managed_disk_type                = "Premium_LRS"
    disk_size_gb                     = null
    write_accelerator_enabled        = null
    internal_dns_name_label          = null
    enable_ip_forwarding             = null # set it to true if you want to enable IP forwarding on the NIC
    enable_accelerated_networking    = null # set it to true if you want to enable accelerated networking
    dns_servers                      = null
    static_ip                        = null
    recovery_services_vault_key      = "rsv1"
    enable_cmk_disk_encryption       = true                                   # set it to true if you want to enable disk encryption using customer managed key
    custom_data_path                 = null # Optional
    custom_data_args                 = null
    diagnostics_storage_config_path  = null # Optional
    custom_script                    = null
  }
}

apache_vms = {
  vm1 = {
    name                             = "attbc-apache-vm-001"
    vm_size                          = "Standard_D8s_v3"
    assign_identity                  = true
    lb_backend_pool_names            = ["attbc-poc-wus2-nginx-backend-pool-01"]
    lb_nat_rule_names                = null
    app_security_group_names         = null
    app_gateway_name                 = null
    zone                             = "1"
    subnet_name                      = "attbc-22805-poc-apache-snet"    #(Mandatory) Id of the Subnet   
    disable_password_authentication  = true
    source_image_reference_offer     = "RHEL"   # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer
    source_image_reference_publisher = "RedHat" # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer  
    source_image_reference_sku       = "7-LVM"  # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer 
    source_image_reference_version   = "Latest" # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer             
    storage_os_disk_caching          = "ReadWrite"
    managed_disk_type                = "Premium_LRS"
    disk_size_gb                     = null
    write_accelerator_enabled        = null
    internal_dns_name_label          = null
    enable_ip_forwarding             = null # set it to true if you want to enable IP forwarding on the NIC
    enable_accelerated_networking    = null # set it to true if you want to enable accelerated networking
    dns_servers                      = null
    static_ip                        = null
    recovery_services_vault_key      = "rsv1"
    enable_cmk_disk_encryption       = true                                   # set it to true if you want to enable disk encryption using customer managed key
    custom_data_path                 = null # Optional
    custom_data_args                 = null
    diagnostics_storage_config_path  = null # Optional
    custom_script                    = null
  },
  vm2 = {
    name                             = "attbc-apache-vm-002"
    vm_size                          = "Standard_D8s_v3"
    assign_identity                  = true
    lb_backend_pool_names            = ["attbc-poc-wus2-nginx-backend-pool-01"]
    lb_nat_rule_names                = null
    app_security_group_names         = null
    app_gateway_name                 = null
    zone                             = "2"
    subnet_name                      = "attbc-22805-poc-apache-snet"    #(Mandatory) Id of the Subnet   
    disable_password_authentication  = true
    source_image_reference_offer     = "RHEL"   # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer
    source_image_reference_publisher = "RedHat" # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer  
    source_image_reference_sku       = "7-LVM"  # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer 
    source_image_reference_version   = "Latest" # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer             
    storage_os_disk_caching          = "ReadWrite"
    managed_disk_type                = "Premium_LRS"
    disk_size_gb                     = null
    write_accelerator_enabled        = null
    internal_dns_name_label          = null
    enable_ip_forwarding             = null # set it to true if you want to enable IP forwarding on the NIC
    enable_accelerated_networking    = null # set it to true if you want to enable accelerated networking
    dns_servers                      = null
    static_ip                        = null
    recovery_services_vault_key      = "rsv1"
    enable_cmk_disk_encryption       = true                                   # set it to true if you want to enable disk encryption using customer managed key
    custom_data_path                 = null # Optional
    custom_data_args                 = null
    diagnostics_storage_config_path  = null # Optional
    custom_script                    = null
  }
}

sql_vms = {
  vm1 = {
    name                             = "attbc-aem-vm-001"
    vm_size                          = "Standard_D8s_v3"
    assign_identity                  = true
    lb_backend_pool_names            = ["attbc-poc-wus2-db-backend-pool-01"]
    lb_nat_rule_names                = null
    app_security_group_names         = null
    app_gateway_name                 = null
    zone                             = "1"
    subnet_name                      = "westus2-22805-poc-vnet-db-snet"    #(Mandatory) Id of the Subnet   
    disable_password_authentication  = true
    source_image_reference_offer     = "RHEL"   # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer
    source_image_reference_publisher = "RedHat" # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer  
    source_image_reference_sku       = "7-LVM"  # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer 
    source_image_reference_version   = "Latest" # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer             
    storage_os_disk_caching          = "ReadWrite"
    managed_disk_type                = "Premium_LRS"
    disk_size_gb                     = null
    write_accelerator_enabled        = null
    internal_dns_name_label          = null
    enable_ip_forwarding             = null # set it to true if you want to enable IP forwarding on the NIC
    enable_accelerated_networking    = null # set it to true if you want to enable accelerated networking
    dns_servers                      = null
    static_ip                        = null
    recovery_services_vault_key      = "rsv1"
    enable_cmk_disk_encryption       = true                                   # set it to true if you want to enable disk encryption using customer managed key
    custom_data_path                 = null # Optional
    custom_data_args                 = null
    diagnostics_storage_config_path  = null # Optional
    custom_script                    = null
  },
  vm2 = {
    name                             = "attbc-aem-vm-002"
    vm_size                          = "Standard_D8s_v3"
    assign_identity                  = true
    lb_backend_pool_names            = ["attbc-poc-wus2-db-backend-pool-01"]
    lb_nat_rule_names                = null
    app_security_group_names         = null
    app_gateway_name                 = null
    zone                             = "2"
    subnet_name                      = "westus2-22805-poc-vnet-db-snet"    #(Mandatory) Id of the Subnet   
    disable_password_authentication  = true
    source_image_reference_offer     = "RHEL"   # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer
    source_image_reference_publisher = "RedHat" # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer  
    source_image_reference_sku       = "7-LVM"  # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer 
    source_image_reference_version   = "Latest" # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer             
    storage_os_disk_caching          = "ReadWrite"
    managed_disk_type                = "Premium_LRS"
    disk_size_gb                     = null
    write_accelerator_enabled        = null
    internal_dns_name_label          = null
    enable_ip_forwarding             = null # set it to true if you want to enable IP forwarding on the NIC
    enable_accelerated_networking    = null # set it to true if you want to enable accelerated networking
    dns_servers                      = null
    static_ip                        = null
    recovery_services_vault_key      = "rsv1"
    enable_cmk_disk_encryption       = true                                   # set it to true if you want to enable disk encryption using customer managed key
    custom_data_path                 = null # Optional
    custom_data_args                 = null
    diagnostics_storage_config_path  = null # Optional
    custom_script                    = null
  }
}

jump_managed_data_disks = {}
app_managed_data_disks = {
  disk1 = {
    disk_name                 = "author-review-disk-001"
    vm_name                   = "attbc-author-review-vm-001"
    lun                       = 1
    storage_account_type      = "Premium_LRS"
    disk_size                 = "4096"
    caching                   = "None"
    write_accelerator_enabled = false
  },
  disk2 = {
    disk_name                 = "author-review-disk-002"
    vm_name                   = "attbc-author-review-vm-002"
    lun                       = 2
    storage_account_type      = "Premium_LRS"
    disk_size                 = "4096"
    caching                   = "None"
    write_accelerator_enabled = false
  },
  disk3 = {
    disk_name                 = "author-non-review-disk-001"
    vm_name                   = "attbc-author-non-review-vm-001"
    lun                       = 3
    storage_account_type      = "Premium_LRS"
    disk_size                 = "2048"
    caching                   = "None"
    write_accelerator_enabled = false
  },
  disk4 = {
    disk_name                 = "author-non-review-disk-002"
    vm_name                   = "attbc-author-non-review-vm-001"
    lun                       = 4
    storage_account_type      = "Premium_LRS"
    disk_size                 = "128"
    caching                   = "None"
    write_accelerator_enabled = false
  },
  disk5 = {
    disk_name                 = "author-non-review-disk-003"
    vm_name                   = "attbc-author-non-review-vm-001"
    lun                       = 5
    storage_account_type      = "Premium_LRS"
    disk_size                 = "32"
    caching                   = "None"
    write_accelerator_enabled = false
  },
  disk6 = {
    disk_name                 = "author-non-review-disk-004"
    vm_name                   = "attbc-author-non-review-vm-002"
    lun                       = 6
    storage_account_type      = "Premium_LRS"
    disk_size                 = "2048"
    caching                   = "None"
    write_accelerator_enabled = false
  },
  disk7 = {
    disk_name                 = "author-non-review-disk-005"
    vm_name                   = "attbc-author-non-review-vm-002"
    lun                       = 7
    storage_account_type      = "Premium_LRS"
    disk_size                 = "128"
    caching                   = "None"
    write_accelerator_enabled = false
  },
  disk8 = {
    disk_name                 = "author-non-review-disk-006"
    vm_name                   = "attbc-author-non-review-vm-002"
    lun                       = 8
    storage_account_type      = "Premium_LRS"
    disk_size                 = "32"
    caching                   = "None"
    write_accelerator_enabled = false
  },
  disk9 = {
    disk_name                 = "publisher-review-disk-001"
    vm_name                   = "attbc-publisher-review-vm-001"
    lun                       = 9
    storage_account_type      = "Premium_LRS"
    disk_size                 = "4096"
    caching                   = "None"
    write_accelerator_enabled = false
  },
  disk10 = {
    disk_name                 = "publisher-review-disk-002"
    vm_name                   = "attbc-publisher-review-vm-002"
    lun                       = 10
    storage_account_type      = "Premium_LRS"
    disk_size                 = "4096"
    caching                   = "None"
    write_accelerator_enabled = false
  },
  disk11 = {
    disk_name                 = "publisher-review-disk-003"
    vm_name                   = "attbc-publisher-review-vm-003"
    lun                       = 11
    storage_account_type      = "Premium_LRS"
    disk_size                 = "4096"
    caching                   = "None"
    write_accelerator_enabled = false
  },
  disk12 = {
    disk_name                 = "publisher-non-review-disk-001"
    vm_name                   = "attbc-publisher-non-review-vm-001"
    lun                       = 12
    storage_account_type      = "Premium_LRS"
    disk_size                 = "2048"
    caching                   = "None"
    write_accelerator_enabled = false
  },
  disk13 = {
    disk_name                 = "publisher-non-review-disk-002"
    vm_name                   = "attbc-publisher-non-review-vm-001"
    lun                       = 13
    storage_account_type      = "Premium_LRS"
    disk_size                 = "128"
    caching                   = "None"
    write_accelerator_enabled = false
  },
  disk14 = {
    disk_name                 = "publisher-non-review-disk-003"
    vm_name                   = "attbc-publisher-non-review-vm-001"
    lun                       = 14
    storage_account_type      = "Premium_LRS"
    disk_size                 = "32"
    caching                   = "None"
    write_accelerator_enabled = false
  },
  disk15 = {
    disk_name                 = "publisher-non-review-disk-004"
    vm_name                   = "attbc-publisher-non-review-vm-002"
    lun                       = 15
    storage_account_type      = "Premium_LRS"
    disk_size                 = "2048"
    caching                   = "None"
    write_accelerator_enabled = false
  },
  disk16 = {
    disk_name                 = "publisher-non-review-disk-005"
    vm_name                   = "attbc-publisher-non-review-vm-002"
    lun                       = 16
    storage_account_type      = "Premium_LRS"
    disk_size                 = "128"
    caching                   = "None"
    write_accelerator_enabled = false
  },
  disk17 = {
    disk_name                 = "publisher-non-review-disk-006"
    vm_name                   = "attbc-publisher-non-review-vm-002"
    lun                       = 17
    storage_account_type      = "Premium_LRS"
    disk_size                 = "32"
    caching                   = "None"
    write_accelerator_enabled = false
  },
  disk18 = {
    disk_name                 = "publisher-non-review-disk-007"
    vm_name                   = "attbc-publisher-non-review-vm-003"
    lun                       = 18
    storage_account_type      = "Premium_LRS"
    disk_size                 = "2048"
    caching                   = "None"
    write_accelerator_enabled = false
  },
  disk19 = {
    disk_name                 = "publisher-non-review-disk-008"
    vm_name                   = "attbc-publisher-non-review-vm-003"
    lun                       = 19
    storage_account_type      = "Premium_LRS"
    disk_size                 = "128"
    caching                   = "None"
    write_accelerator_enabled = false
  },
  disk20 = {
    disk_name                 = "publisher-non-review-disk-009"
    vm_name                   = "attbc-publisher-non-review-vm-003"
    lun                       = 20
    storage_account_type      = "Premium_LRS"
    disk_size                 = "32"
    caching                   = "None"
    write_accelerator_enabled = false
  },
  disk21 = {
    disk_name                 = "processor-disk-001"
    vm_name                   = "attbc-processor-vm-001"
    lun                       = 21
    storage_account_type      = "Premium_LRS"
    disk_size                 = "4096"
    caching                   = "None"
    write_accelerator_enabled = false
  },
  disk22 = {
    disk_name                 = "dispatcher-review-disk-001"
    vm_name                   = "attbc-dispatcher-review-vm-001"
    lun                       = 22
    storage_account_type      = "Premium_LRS"
    disk_size                 = "512"
    caching                   = "None"
    write_accelerator_enabled = false
  },
  disk23 = {
    disk_name                 = "dispatcher-review-disk-002"
    vm_name                   = "attbc-dispatcher-review-vm-001"
    lun                       = 23
    storage_account_type      = "Premium_LRS"
    disk_size                 = "128"
    caching                   = "None"
    write_accelerator_enabled = false
  },
  disk24 = {
    disk_name                 = "dispatcher-review-disk-003"
    vm_name                   = "attbc-dispatcher-review-vm-001"
    lun                       = 24
    storage_account_type      = "Premium_LRS"
    disk_size                 = "64"
    caching                   = "None"
    write_accelerator_enabled = false
  },
  disk25 = {
    disk_name                 = "dispatcher-non-review-disk-001"
    vm_name                   = "attbc-dispatcher-non-review-vm-001"
    lun                       = 25
    storage_account_type      = "Premium_LRS"
    disk_size                 = "512"
    caching                   = "None"
    write_accelerator_enabled = false
  },
  disk26 = {
    disk_name                 = "dispatcher-non-review-disk-002"
    vm_name                   = "attbc-dispatcher-non-review-vm-001"
    lun                       = 26
    storage_account_type      = "Premium_LRS"
    disk_size                 = "128"
    caching                   = "None"
    write_accelerator_enabled = false
  },
  disk27 = {
    disk_name                 = "dispatcher-non-review-disk-003"
    vm_name                   = "attbc-dispatcher-non-review-vm-001"
    lun                       = 27
    storage_account_type      = "Premium_LRS"
    disk_size                 = "64"
    caching                   = "None"
    write_accelerator_enabled = false
  },
  disk28 = {
    disk_name                 = "nginx-disk-001"
    vm_name                   = "attbc-nginx-vm-001"
    lun                       = 28
    storage_account_type      = "Premium_LRS"
    disk_size                 = "512"
    caching                   = "None"
    write_accelerator_enabled = false
  },
  disk29 = {
    disk_name                 = "nginx-disk-002"
    vm_name                   = "attbc-nginx-vm-001"
    lun                       = 29
    storage_account_type      = "Premium_LRS"
    disk_size                 = "128"
    caching                   = "None"
    write_accelerator_enabled = false
  },
  disk30 = {
    disk_name                 = "nginx-disk-003"
    vm_name                   = "attbc-nginx-vm-001"
    lun                       = 30
    storage_account_type      = "Premium_LRS"
    disk_size                 = "64"
    caching                   = "None"
    write_accelerator_enabled = false
  },
  disk31 = {
    disk_name                 = "nginx-disk-004"
    vm_name                   = "attbc-nginx-vm-002"
    lun                       = 31
    storage_account_type      = "Premium_LRS"
    disk_size                 = "512"
    caching                   = "None"
    write_accelerator_enabled = false
  },
  disk32 = {
    disk_name                 = "nginx-disk-005"
    vm_name                   = "attbc-nginx-vm-002"
    lun                       = 32
    storage_account_type      = "Premium_LRS"
    disk_size                 = "128"
    caching                   = "None"
    write_accelerator_enabled = false
  },
    disk33 = {
    disk_name                 = "nginx-disk-006"
    vm_name                   = "attbc-nginx-vm-002"
    lun                       = 33
    storage_account_type      = "Premium_LRS"
    disk_size                 = "64"
    caching                   = "None"
    write_accelerator_enabled = false
  }
}

apache_managed_data_disks = {
  disk1 = {
    disk_name                 = "attbc-apache-disk-001"
    vm_name                   = "attbc-apache-vm-001"
    lun                       = 1
    storage_account_type      = "Premium_LRS"
    disk_size                 = "512"
    caching                   = "None"
    write_accelerator_enabled = false
  },
  disk2 = {
    disk_name                 = "attbc-apache-disk-002"
    vm_name                   = "attbc-apache-vm-001"
    lun                       = 2
    storage_account_type      = "Premium_LRS"
    disk_size                 = "128"
    caching                   = "None"
    write_accelerator_enabled = false
  },
  disk3 = {
    disk_name                 = "attbc-apache-disk-003"
    vm_name                   = "attbc-apache-vm-001"
    lun                       = 3
    storage_account_type      = "Premium_LRS"
    disk_size                 = "64"
    caching                   = "None"
    write_accelerator_enabled = false
  },
  disk4 = {
    disk_name                 = "attbc-apache-disk-004"
    vm_name                   = "attbc-apache-vm-002"
    lun                       = 4
    storage_account_type      = "Premium_LRS"
    disk_size                 = "512"
    caching                   = "None"
    write_accelerator_enabled = false
  },
  disk5 = {
    disk_name                 = "attbc-apache-disk-005"
    vm_name                   = "attbc-apache-vm-002"
    lun                       = 5
    storage_account_type      = "Premium_LRS"
    disk_size                 = "128"
    caching                   = "None"
    write_accelerator_enabled = false
  },
  disk6 = {
    disk_name                 = "attbc-apache-disk-006"
    vm_name                   = "attbc-apache-vm-002"
    lun                       = 6
    storage_account_type      = "Premium_LRS"
    disk_size                 = "64"
    caching                   = "None"
    write_accelerator_enabled = false
  }
}

sql_managed_data_disks = {
  disk1 = {
    disk_name                 = "attbc-aem-disk-001"
    vm_name                   = "attbc-aem-vm-001"
    lun                       = 1
    storage_account_type      = "Premium_LRS"
    disk_size                 = "8192"
    caching                   = "None"
    write_accelerator_enabled = false
  },
  disk2 = {
    disk_name                 = "attbc-aem-disk-002"
    vm_name                   = "attbc-aem-vm-001"
    lun                       = 2
    storage_account_type      = "Premium_LRS"
    disk_size                 = "4096"
    caching                   = "None"
    write_accelerator_enabled = false
  },
  disk3 = {
    disk_name                 = "attbc-aem-disk-003"
    vm_name                   = "attbc-aem-vm-002"
    lun                       = 3
    storage_account_type      = "Premium_LRS"
    disk_size                 = "8192"
    caching                   = "None"
    write_accelerator_enabled = false
  },
  disk4 = {
    disk_name                 = "attbc-aem-disk-004"
    vm_name                   = "attbc-aem-vm-002"
    lun                       = 4
    storage_account_type      = "Premium_LRS"
    disk_size                 = "4096"
    caching                   = "None"
    write_accelerator_enabled = false
  }
}


AttbcAdb_image_id="/subscriptions/99adcbba-78e4-4854-8768-4d5f054e9afd/resourceGroups/22805-westus2-poc1-rg/providers/Microsoft.Compute/galleries/22805westus2pocsig/images/AttbcAdb/versions/1.0.12"
apache_image_id="/subscriptions/99adcbba-78e4-4854-8768-4d5f054e9afd/resourceGroups/22805-westus2-poc1-rg/providers/Microsoft.Compute/galleries/22805westus2pocsig/images/apache/versions/1.0.1"
AttbcRvAuth_image_id="/subscriptions/99adcbba-78e4-4854-8768-4d5f054e9afd/resourceGroups/22805-westus2-poc1-rg/providers/Microsoft.Compute/galleries/22805westus2pocsig/images/AttbcRvAuth/versions/1.0.0"
sql_image_id="/subscriptions/99adcbba-78e4-4854-8768-4d5f054e9afd/resourceGroups/22805-westus2-poc1-rg/providers/Microsoft.Compute/images/aem-v1.0.1"



windows_vms = {}

#- Private Link Services
private_link_services = {
  pls1 = {
    name                           = "attbc-22805-westus2-poc-jump-pls-01"
    frontend_ip_config_name        = "attbc-poc-fe-jump-lb-01"
    subnet_name                    = "westus2-22805-poc-vnet-pls-snet-01"
    private_ip_address             = null
    private_ip_address_version     = null
    visibility_subscription_ids    = null
    auto_approval_subscription_ids = null
  },
  pls2 = {
    name                           = "attbc-22805-westus2-poc-front-tier-pls-01"
    frontend_ip_config_name        = "westus2-22805-poc-nginx-fe-lb-02"
    subnet_name                    = "westus2-22805-poc-vnet-pls-snet-01"
    private_ip_address             = null
    private_ip_address_version     = null
    visibility_subscription_ids    = null
    auto_approval_subscription_ids = null
  },
  pls3 = {
    name                           = "attbc-22805-westus2-poc-db-pls-01"
    frontend_ip_config_name        = "westus2-poc-db-fe-lb-01"
    subnet_name                    = "westus2-22805-poc-vnet-pls-snet-01"
    private_ip_address             = null
    private_ip_address_version     = null
    visibility_subscription_ids    = null
    auto_approval_subscription_ids = null
  },
   pls4 = {
    name                           = "attbc-22805-westus2-poc-sftp-pls-01"
    frontend_ip_config_name        = "westus2-22805-poc-sftp-fe-lb-01"
    subnet_name                    = "westus2-22805-poc-vnet-pls-snet-01"
    private_ip_address             = null
    private_ip_address_version     = null
    visibility_subscription_ids    = null
    auto_approval_subscription_ids = null
  }
}

# - Private Endpoint
private_endpoints = {
  pe1 = {
    resource_name            = "AllserversBootDiagPE"
    name                     = "ATTBC-22805-poc-bootdiag-pe-01"
    subnet_name              = "westus2-22805-poc-vnet-pe-snet-01"
    vnet_name                = "westus2-22805-poc-vnet"
    approval_required        = false
    approval_message         = null
    group_ids                = ["blob"]
    dns_zone_name            = "privatelink.blob.core.windows.net"
    zone_exists              = false
    zone_to_vnet_link_exists = false
    registration_enabled     = false
    dns_a_records = [{
      name                  = "blob-arecord"
      ttl                   = null
      ip_addresses          = null
      private_endpoint_name = null
    }]
  },
   pe2 = {
    resource_name            = "AllserversVMDiagPE"
    name                     = "ATTBC-22805-poc-vmdiag-pe-01"
    subnet_name              = "westus2-22805-poc-vnet-pe-snet-01"
    vnet_name                = "westus2-22805-poc-vnet"
    approval_required        = false
    approval_message         = null
    group_ids                = ["blob"]
    dns_zone_name            = "privatelink.blob.core.windows.net"
    zone_exists              = true
    zone_to_vnet_link_exists = true
    registration_enabled     = false
    dns_a_records = []
  },
  pe3 = {
    resource_name            = "DBBackupStoragePE"
    name                     = "ATTBC-22805-poc-sa-pe-01"
    subnet_name              = "westus2-22805-poc-vnet-pe-snet-01"
    vnet_name                = "westus2-22805-poc-vnet"
    approval_required        = false
    approval_message         = null
    group_ids                = ["table"]
    dns_zone_name            = "privatelink.table.core.windows.net"
    zone_exists              = false
    zone_to_vnet_link_exists = false
    registration_enabled     = false
    dns_a_records = [{
      name                  = "table-arecord"
      ttl                   = null
      ip_addresses          = null
      private_endpoint_name = null
    }]
  },
  pe4 = {
    resource_name            = "AllserversStoragePE"
    name                     = "ATTBC-22805-poc-sansa-pe-01"
    subnet_name              = "westus2-22805-poc-vnet-pe-snet-01"
    vnet_name                = "westus2-22805-poc-vnet"
    approval_required        = false
    approval_message         = null
    group_ids                = ["queue"]
    dns_zone_name            = "privatelink.queue.core.windows.net"
    zone_exists              = false
    zone_to_vnet_link_exists = false
    registration_enabled     = false
    dns_a_records = [{
      name                  = "queue-arecord"
      ttl                   = null
      ip_addresses          = null
      private_endpoint_name = null
    }]
  },
  pe5 = {
    resource_name            = "keyvault"
    name                     = "ATTBC-22805-poc-kv-pe-01"
    subnet_name              = "westus2-22805-poc-vnet-pe-snet-01"
    vnet_name                = "westus2-22805-poc-vnet"
    approval_required        = false
    approval_message         = null
    group_ids                = ["vault"]
    dns_zone_name            = "privatelink.vaultcore.azure.net"
    zone_exists              = false
    zone_to_vnet_link_exists = false
    registration_enabled     = true
    dns_a_records            = null
  },
  pe6 = {
    resource_name            = "nva"
    name                     = "attbc-22805-poc-proxy-pe-01"
    subnet_name              = "westus2-22805-poc-vnet-pe-snet-01"
    vnet_name                = "westus2-22805-poc-vnet"
    approval_required        = true
    approval_message         = "Please approve nva proxy for ATTBC"
    group_ids                = []
    dns_zone_name            = "svc.local"
    zone_exists              = false
    zone_to_vnet_link_exists = false
    registration_enabled     = false
    dns_a_records = [{
      name                  = "nva.proxy"
      ttl                   = 300
      ip_addresses          = null 
      private_endpoint_name = null
    }]
  },
  pe7 = {
    resource_name            = "sftp"
    name                     = "attbc-22805-poc-sftp-pe-01"
    subnet_name              = "westus2-22805-poc-vnet-pe-snet-01"
    vnet_name                = "westus2-22805-poc-vnet"
    approval_required        = false
    approval_message         = null
    group_ids                = ["blob"]
    dns_zone_name            = "Privatelink.datastore.blob.core.windows.net"
    zone_exists              = false
    zone_to_vnet_link_exists = false
    registration_enabled     = false
    dns_a_records = [{
      name                  = "datastore-arecord"
      ttl                   = 300
      ip_addresses          = null 
      private_endpoint_name = null
    }]
  }
}

ado_kv_pe_name          = "attbc-westus2-poc-kv-pe-01"
ado_resource_group_name = "22805-westus2-poc1-rg"
ado_vnet_name           = "22805-westus2-poc1-vnet"
ado_subnet_name         = "22805-westus2-base-snet"

#- Recovery Services Vaults
recovery_services_vaults = {
  rsv1 = {
    name                = "wus2-attbc-poc-recovery-vault-01"
    policy_name         = "attbc-poc-recovery-vault-policy"
    sku                 = "Standard"
    soft_delete_enabled = false
    backup_settings = {
      frequency = "Daily"
      time      = "23:00"
      weekdays  = null
    }
    retention_settings = {
      daily   = 10
      weekly  = null #"42:Sunday,Wednesday"
      monthly = null #"7:Sunday,Wednesday:First,Last"
      yearly  = null #"77:Sunday:Last:January"
    }
  }
}

# - Application Insights

application_insights = {
  appinsight1 = {
    name                                  = "wus2_attbc_22805_poc_appinsights"
    application_type                      = "web"
    retention_in_days                     = 60
    daily_data_cap_in_gb                  = null
    daily_data_cap_notifications_disabled = null
    sampling_percentage                   = null
    disable_ip_masking                    = null
  }
}

# - Firewall
firewalls = {
  "firewall1" = {
    name = "attbcpocfirewall"
    ip_configuration = [{
      name        = "attbcpocconfig"
      subnet_name = "AzureFirewallSubnet"
    }]
  }
}

fw_network_rules = {}
fw_nat_rules = {}
fw_application_rules = {}


# - Application Gateways
key_vault_resource_group = "22805-westus2-poc1-rg"
key_vault_name = "poc-kv-22805"

application_gateways = {
  "appgw1" = {
    name         = "wus2-attbc-22805-poc-gateway-01"
    zones        = ["1", "2"]
    enable_http2 = true
    waf_key      = null
    sku = {
      name     = "WAF_v2"
      tier     = "WAF_v2"
      capacity = 2
    }
    gateway_ip_configurations = [{
      name        = "my-gateway-ip-configuration"
      subnet_name = "westus2-22805-poc-vnet-appgw-snet-01"
    }]
    frontend_ports = [
      {
        name = "wus2-attbc-22805-appgateway-feport"
        port = 443
      }
    ]
    frontend_ip_configurations = [
      {
        name             = "wus2-attbc-22805-appgateway-feip"
        subnet_name      = "westus2-22805-poc-vnet-appgw-snet-01"
        static_ip        = null
        enable_public_ip = true
      }
    ]
    backend_address_pools = [
      {
        name         = "wus2-attbc-22805-appgateway-beap"
        fqdns        = null
        ip_addresses = null
      }
    ]
    backend_http_settings = [
      {
        name                                = "wus2-attbc-22805-appgateway-be-htst"
        path                                = "/"
        port                                = 443
        cookie_based_affinity               = "Enabled"
        request_timeout                     = null
        probe_name                          = "chef-probe"
        host_name                           = "att.com"
        pick_host_name_from_backend_address = false
      }
    ]
    http_listeners = [
      {
        name                           = "wus2-attbc-22805-appgateway-httplstn"
        frontend_ip_configuration_name = "wus2-attbc-22805-appgateway-feip"
        frontend_port_name             = "wus2-attbc-22805-appgateway-feport"
        ssl_certificate_name           = "attbcappgw"
        sni_required                   = false
        listener_type                  = "Basic"
        host_name                      = null
        host_names                     = null
      }
    ]
    request_routing_rules = [
      {
        name                        = "wus2-attbc-22805-appgateway-rqrt"
        rule_type                   = "Basic"
        listener_name               = "wus2-attbc-22805-appgateway-httplstn"
        backend_address_pool_name   = "wus2-attbc-22805-appgateway-beap"
        backend_http_settings_name  = "wus2-attbc-22805-appgateway-be-htst"
        redirect_configuration_name = null
        url_path_map_name           = null
      }
    ]
    url_path_maps = null
    probes = [
      {
        name                                      = "chef-probe"
        path                                      = "/"
        host                                      = "westus2-t-chef1.bf.sl.attcompute.com"
        interval                                  = null
        timeout                                   = null
        unhealthy_threshold                       = null
        pick_host_name_from_backend_http_settings = false
      },
      {
        name                                      = "docker-probe"
        path                                      = "/"
        host                                      = "devpgm-uam.bf.sl.attcompute.com"
        interval                                  = null
        timeout                                   = null
        unhealthy_threshold                       = null
        pick_host_name_from_backend_http_settings = false
      }
    ]
    redirect_configuration         = null
    disabled_ssl_protocols         = null
    trusted_root_certificate_names = ["attbcappgw"]
  }
}

waf_policies = {}