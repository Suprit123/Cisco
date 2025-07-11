variable "device_name" {
  type        = string
  description = "the name of the router"
}

variable "loopback_nums" {
  type        = list(number)
  description = "list of loopback interface numbers to be created"
}