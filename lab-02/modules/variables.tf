variable "device_name" {
  type        = string
  description = "Targert router name"
}

variable "loopback_id" {
  type        = string
  description = "interface number for the loopback"
}

variable "ipv4_address" {
  type        = string
  description = "ipv4 add for loopbacks"
}

variable "ipv4_mask" {
  type        = string
  default     = "255.255.255.255"
  description = "mask for loopback"
}