variable "username" {
  description = "router username"
  type        = string
  sensitive   = true
}

variable "password" {
  description = "router password"
  type        = string
  sensitive   = true
}

variable "url" {
  description = "usrl to connect to router"
  type        = string
  default     = "https://10.255.1.100"
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