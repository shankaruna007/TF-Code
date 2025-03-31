provider "aws" {
  region = "us-east-1"
}

data "aws_vpc" "default" {
  default = true
}

data "aws_subnet" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
  filter {
    name   = "default-for-az"
    values = ["true"]
  }
}

data "aws_security_group" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
  filter {
    name   = "group-name"
    values = ["default"]
  }
}

resource "aws_instance" "this" {
  ami           = "ami-0efc43a4067fe9a3e"
  instance_type = "t2.micro"
  subnet_id     = data.aws_subnet.default.id
  vpc_security_group_ids = [data.aws_security_group.default.id]

  tags = {
    Name = "MyEC2Instance"
  }
}

output "instance_id" {
  value = aws_instance.this.id
}

output "public_ip" {
  value = aws_instance.this.public_ip
}
