resource "aws_eip" "my_eip" {
  instance = "${aws_instance.web-server.id}"
}
