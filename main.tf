terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.13.0"
    }
  }
  # #save the state file in azure storage account
  # backend "azurerm" {
  #   resource_group_name  = "TerraformResourceGroup"
  #   storage_account_name = "terraformazurejitendra"
  #   container_name       = "tfstate"
  #   key                  = "terraform.tfstate"
  # }
}

#get subscription id
data "azurerm_client_config" "current" {}

provider "azurerm" {
  resource_provider_registrations = "none"
  # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {

  }
  subscription_id = "3d63cb20-9cbf-4b7f-ad0b-0357bff7a436"
}

