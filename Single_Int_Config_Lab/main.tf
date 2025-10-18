resource "iosxe_interface_ethernet" "gig2" {
  type              = var.interface_type
  name              = "2"
  ipv4_address      = "192.168.20.1"
  ipv4_address_mask = "255.255.255.0"
  shutdown          = var.admin_status
}

resource "iosxe_interface_ethernet" "gig3" {
  type              = var.interface_type
  name              = "3"
  ipv4_address      = "192.168.30.1"
  ipv4_address_mask = "255.255.255.0"
  shutdown          = var.admin_status
}

