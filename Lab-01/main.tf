

resource "iosxe_interface_ethernet" "example" {
  type              = "GigabitEthernet"
  description       = "configured via terraform"
  name              = "2"
  shutdown          = false
  ipv4_address      = "10.1.1.1"
  ipv4_address_mask = "255.255.255.0"
}

# resource "iosxe_interface_loopback" "example" {
#   name              = 1
#   ipv4_address      = "1.1.1.1"
#   ipv4_address_mask = "255.255.255.255"
#   shutdown          = var.shutdown
# }

# resource "iosxe_interface_loopback" "example1" {
#   name              = 2
#   ipv4_address      = "2.2.2.2"
#   ipv4_address_mask = "255.255.255.255"
#   shutdown          = var.shutdown
# }


resource "iosxe_interface_loopback" "for_each_loop" {
  for_each          = var.for_each_loop
  name              = each.key
  ipv4_address      = each.value
  ipv4_address_mask = "255.255.255.255"
  shutdown          = var.shutdown
  description       = "loopback interface${each.key}"
}