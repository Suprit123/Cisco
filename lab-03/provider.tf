terraform {
  required_providers {
    iosxe = {
      source  = "CiscoDevNet/iosxe"
      version = "0.5.10"
    }
  }
}

provider "iosxe" {
  devices = [{
    name = "R1"
    url  = "https://10.255.1.100"
    },
    {
      name = "R2"
      url  = "https://10.255.1.101"
    },
    {
      name = "R3"
      url  = "https://10.255.1.102"
  }]

  username = "admin"
  password = "cisco"
  insecure = true
}

