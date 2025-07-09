resource "iosxe_interface_loopback" "loopback" {
  device            = var.device_name
  name              = var.loopback_id
  shutdown          = false
  ipv4_address      = var.ipv4_address
  ipv4_address_mask = var.ipv4_mask
}