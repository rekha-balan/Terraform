# An AMI
variable "ami" {
  description = "AMI id for Ubuntu server creation"
  default     = "ami-04681a1dbd79675a5"
}

variable "home_ip" {
  description = "Ingress Rule IP for web server"
  default     = "116.75.30.5/32"
}

variable "office_ip" {
  description = "Ingress Rule IP for app server"
  default     = "16.75.30.5/32"
}
