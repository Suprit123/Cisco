module "loopback" {
  source        = "./modules/loopback-set"
  for_each      = local.router_loopbacks
  device_name   = each.key
  loopback_nums = each.value

  providers = {
    iosxe = iosxe
  }
}