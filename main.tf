# Set required Terraform providers
# Terraform Remote State Storage with Azure Storage Account

# 1. Terraform Settings Block
terraform { 
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.54.0"
    }
  }

# Terraform State Storage to Azure Storage Container
  backend "azurerm" {
    resource_group_name   = "tfrgblobrg"
    storage_account_name  = "tfrgblobsa"
    container_name        = "tfrgblobsastate"
    key                   = "tfrgblob.tfstate"
    access_key            = "bb"
  }  
}


# Terraform Provider Block for AzureRM
provider "azurerm" {
  features {}
  client_id       = var.client_id
  client_secret   = var.client_secret
  subscription_id = var.subscription_id
  tenant_id = var.tenant_id
}

