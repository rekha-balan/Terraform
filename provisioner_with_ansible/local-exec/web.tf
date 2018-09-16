resource "aws_instance" "web-server" {
  ami             = "${var.ami}"
  instance_type   = "t2.micro"
  security_groups = ["${aws_security_group.my_local_sg.name}"]

  key_name = "somesh"

  tags {
    Name = "local-exec"
  }

  count             = 1
  source_dest_check = false

  provisioner "local-exec" {
    command = "echo ${aws_instance.web-server.public_ip} > inventory"
  }

  provisioner "local-exec" {
    command = "sleep 120; ANSIBLE_HOST_KEY_CHECKING=false ansible-playbook nginx.yml -s -u centos --private-key=./somesh.pem -i inventory"
  }
}
