resource "aws_instance" "app-server" {
  ami             = "${var.ami}"
  instance_type   = "t2.micro"
  security_groups = ["${aws_security_group.my_app_sg.name}"]

  tags {
    Name = "app-server"
  }

  count             = 1
  source_dest_check = false
}
