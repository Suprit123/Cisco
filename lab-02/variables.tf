variable "router_loopbacks" {
  type = map(string)
  default = {
    "R1" = "192.168.100.1"
    "R2" = "192.168.101.1"
    "R3" = "192.168.102.1"
  }
}