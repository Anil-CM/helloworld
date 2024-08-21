terraform {
  required_providers {
    ibm = {
      source  = "IBM-Cloud/ibm"
      version = "~> 1.45.0"
    }
  }
}

provider "ibm" {
  ibmcloud_api_key = var.ibmcloud_api_key
}

data "ibm_resource_group" "all_resource_groups" {
}

output "resource_groups" {
  value = data.ibm_resource_group.all_resource_groups
}