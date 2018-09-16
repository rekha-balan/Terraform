resource "aws_instance" "web-server" {
  ami             = "${var.ami}"
  instance_type   = "${lookup(var.instance_type, terraform.workspace)}"
  security_groups = ["default"]

  tags {
    Name = "web-server"
  }
}
