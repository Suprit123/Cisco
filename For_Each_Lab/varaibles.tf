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

variable "for_each_loop" {
  description = "Loopback Interfaces."
  type        = map(string)
  default = {
    "1" = "1.1.1.1"
    "2" = "2.2.2.2"
    "3" = "3.3.3.3"
  }

}

variable "admin_status" {
  description = "Interface admin status for eg Up/Down"
  type        = bool
  default     = false
}
