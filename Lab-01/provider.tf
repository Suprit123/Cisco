terraform {
  required_providers {
    iosxe = {
      source  = "CiscoDevNet/iosxe"
      version = "0.5.10"
    }
  }
}

provider "iosxe" {
  username = var.username
  password = var.password
  url      = var.url
  insecure = var.insecure
}