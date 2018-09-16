resource "aws_instance" "web-server" {
  ami             = "${var.ami}"
  instance_type   = "t2.micro"
  security_groups = ["${aws_security_group.my_sg.name}"]

  key_name = "somesh"

  tags {
    Name = "web-server"
  }

  count             = 1
  source_dest_check = false

  provisioner "remote-exec" {
    inline = [
      "sudo yum -y install epel-release",
      "sudo yum -y install nginx",
      "sudo systemctl start nginx",
    ]

    connection {
      type        = "ssh"
      user        = "centos"
      private_key = "${file("./somesh.pem")}"
    }
  }
}
