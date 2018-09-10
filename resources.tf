resource "aws_vpc" "environment-example-one" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags {
    Name = "terraform-aws-vpc-example-one"
  }
}

resource "aws_subnet" "subnet1" {
  vpc_id            = "${aws_vpc.environment-example-one.id}"
  cidr_block        = "${cidrsubnet(aws_vpc.environment-example-one.cidr_block, 3, 1)}"
  availability_zone = "us-east-1e"
}

resource "aws_subnet" "subnet2" {
  vpc_id            = "${aws_vpc.environment-example-one.id}"
  cidr_block        = "${cidrsubnet(aws_vpc.environment-example-one.cidr_block, 2, 2)}"
  availability_zone = "us-east-1a"
}

resource "aws_security_group" "subnetsecurity" {
  vpc_id = "${aws_vpc.environment-example-one.id}"

  ingress {
    cidr_blocks = ["${aws_vpc.environment-example-one.cidr_block}"]

    from_port = 80
    to_port   = 80
    protocol  = "tcp"
  }
}
