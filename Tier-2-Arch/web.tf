resource "aws_instance" "web-server" {
  ami             = "${var.ami}"
  instance_type   = "t2.micro"
  security_groups = ["${aws_security_group.my_sg.name}"]

  tags {
    Name = "web-server"
  }

  count             = 1
  source_dest_check = false
}
