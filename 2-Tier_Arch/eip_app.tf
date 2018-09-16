resource "aws_eip" "my_app_eip" {
  instance = "${aws_instance.app-server.id}"
}
