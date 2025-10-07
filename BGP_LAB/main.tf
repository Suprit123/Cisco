# Interface configuration on R1
resource "iosxe_interface_ethernet" "example" {
  provider          = iosxe.r1
  type              = "GigabitEthernet"
  name              = 1
  ipv4_address      = "192.168.1.10"
  ipv4_address_mask = "255.255.255.0"
  shutdown          = false
}
# Interface configuration on R2
resource "iosxe_interface_ethernet" "example1" {
  provider          = iosxe.r2
  type              = "GigabitEthernet"
  name              = 1
  ipv4_address      = "192.168.1.20"
  ipv4_address_mask = "255.255.255.0"
  shutdown          = false
}

# BGP Configuration on R1
resource "iosxe_bgp" "r1_bgp" {
  provider = iosxe.r1
  asn      = "65000"

}

resource "iosxe_bgp_neighbor" "r2_bgp" {
  provider  = iosxe.r1
  asn       = "65000"
  ip        = "192.168.20.1"
  remote_as = "65001"
  shutdown  = false
}

# BGP Configuration on R2
resource "iosxe_bgp" "r2_bgp" {
  provider = iosxe.r2
  asn      = "65001"
}

resource "iosxe_bgp_neighbor" "r1_bgp" {
  provider  = iosxe.r2
  asn       = "65001"
  ip        = "192.168.1.10"
  remote_as = "65000"
  shutdown  = false
}
