variable "username" {
  description = "Router username"
  type        = string
  default     = "admin"
}

variable "password" {
  description = "Router passowrd"
  type        = string
  sensitive   = true
}

variable "url" {
  description = "URL to connect to router via restconf"
  type        = string
  default     = "https://172.16.166.133"
}

variable "interface_type" {
  description = "interface type for example gig2."
  type        = string
  default     = "GigabitEthernet"
}

variable "admin_status" {
  description = "Interface admin status for eg Up/Down"
  type        = bool
  default     = false
}
