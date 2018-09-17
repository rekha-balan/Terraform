resource "aws_instance" "web-server" {
  ami             = "${var.ami}"
  instance_type   = "${var.instance_type}"
  security_groups = ["default"]

  tags {
    Name = "web-server"
  }
}
