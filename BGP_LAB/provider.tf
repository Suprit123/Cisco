terraform {
  required_providers {
    iosxe = {
      source  = "CiscoDevNet/iosxe"
      version = "0.9.0"
    }
  }
}

provider "iosxe" {
  alias    = "r1"
  url      = var.r1_url
  username = var.username
  password = var.password
  insecure = var.insecure
}

provider "iosxe" {
  alias    = "r2"
  url      = var.r1_url
  username = var.username
  password = var.password
  insecure = var.insecure
}
