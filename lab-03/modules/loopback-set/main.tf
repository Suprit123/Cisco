resource "iosxe_interface_loopback" "loop" {
  for_each          = local.lb_map
  device            = var.device_name
  name              = each.value
  ipv4_address      = "192.168.${each.key}.1"
  ipv4_address_mask = "255.255.255.255"
  shutdown          = false
}