variable "username" {
  description = "Router username"
  type        = string
}

variable "password" {
  description = "Router password"
  type        = string
  sensitive   = true
}

variable "r1_url" {
  description = "URL to connect to router r1"
  type        = string
  default     = "https://172.16.166.131"
}

variable "r2_url" {
  description = "URl to connect to router r2"
  type        = string
  default     = "https://172.16.166.132"
}

variable "insecure" {
  description = "Connection type"
  type        = bool
  default     = true
}

variable "r1_host" {
  description = "R1 mgmt IP add"
  type        = string
  default     = "172.16.166.131"
}

variable "r2_host" {
  description = "R2 mgmt ip add"
  type        = string
  default     = "172.16.166.132"
}
