variable "instance_type" {
  type = "map"

  description = "Instance type for the different environment"

  default = {
    default = "t2.nano"
    dev     = "t2.micro"
    prod    = "m4.large"
  }
}

variable "ami" {
  description = "AMI id for CentOS-7 server creation"
  default     = "ami-9887c6e7"
}
