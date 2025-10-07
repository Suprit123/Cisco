variable "username" {
  description = "router username"
  type        = string
}

variable "password" {
  description = "router password"
  type        = string
  sensitive   = true
}

variable "url" {
  description = "usrl to connect to router"
  type        = string
  default     = "https://172.16.166.133"
}

variable "insecure" {
  description = "connection type"
  type        = bool
  default     = false
}

variable "shutdown" {
  type    = bool
  default = false
}

variable "for_each_loop" {
  type = map(string)
  default = {
    "101" = "101.101.101.101"
    "102" = "102.102.102.102"
    "103" = "103.103.103.103"
  }
}
