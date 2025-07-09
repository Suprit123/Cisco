module "router_loopbacks" {
  source       = "./modules"
  for_each     = var.router_loopbacks
  device_name  = each.key
  loopback_id  = 1
  ipv4_address = each.value

  providers = {
    iosxe = iosxe
  }
}