# - Terraform backend vars

resource_group_name  = "22805-westus2-poc1-rg"
storage_account_name = "22805pocstdgatt003"
container_name       = "terraformstatefiles"
key                  = "attbcwestnprod.tfstate"
region               = "westus2"
