# Configure the Terraform runtime requirements.
terraform {
  required_version = ">= 1.1.0"

  required_providers {
    # Azure Resource Manager provider and version
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "2.3.3"
    }
  }
}

# Define providers and their config params
provider "azurerm" {
  # Leave the features block empty to accept all defaults
  features {}
}

provider "cloudinit" {
  # Configuration options
}

# Define config variables
variable "labelPrefix" {
  type        = string
  description = "This is my algonquin username - wair0001"
}

variable "region" {
  default     = "westus"
  description = "Azure region for deployment"
}

variable "admin_username" {
  type        = string
  default     = "azureadmin"
  description = "This is the username to be used by the administrator."
}
