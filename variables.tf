variable "new_value" {}

variable "new_map" {
  type = "map"
}

output "first_output" {
  value = "this is the first value through execution"
}

output "aws_cidr_subnet1" {
  value = "${aws_subnet.subnet1.cidr_block}"
}
