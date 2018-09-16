variable "instance_type" {
  description = "Instance type"
  default     = "t2.micro"
}

variable "ami" {
  description = "AMI id for CentOS-7 server creation"
  default     = "ami-9887c6e7"
}
