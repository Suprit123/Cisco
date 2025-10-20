resource "iosxe_interface_loopback" "name" {
  for_each          = var.for_each_loop
  name              = each.key
  ipv4_address      = each.value
  ipv4_address_mask = "255.255.255.255"
  shutdown          = var.admin_status
  description       = "Loopback Interface${each.key}"
}
