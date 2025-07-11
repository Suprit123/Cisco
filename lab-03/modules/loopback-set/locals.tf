locals {
  lb_map = {
    for n in var.loopback_nums : tostring(n) => n
  }
}