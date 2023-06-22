# azure Location
variable "location" {
  type = string
  description = "Azure Region where all these resources will be provisioned"
  default = "eastus"
}

# azure Resource Group Name
variable "resource_group_name" {
  type = string
  description = "This variable defines the Resource Group"
  default = "tfrg"
}

# azure AKS Environment Name
variable "environment" {
  type = string  
  description = "This variable defines the Environment"  
  default = "dev"
}

# azure connectivity variables
variable "client_id" { sensitive = true }
variable "client_secret" { sensitive = true }
variable "subscription_id" { sensitive = true }
variable "tenant_id" { sensitive = true }