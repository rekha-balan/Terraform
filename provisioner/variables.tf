# An AMI
variable "ami" {
  description = "AMI id for CentOS-7 server creation"
  default     = "ami-9887c6e7"
}

variable "home_ip" {
  description = "Ingress Rule IP for web server"
  default     = "116.75.30.5/32"
}

variable "office_ip" {
  description = "Ingress Rule IP for app server"
  default     = "16.75.30.5/32"
}
