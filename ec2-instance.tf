provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "Sakthi-Server" {
    ami = "ami-0efc43a4067fe9a3e"
    instance_type = "t2.micro" 
  
 tags = {
    Name = "Sakthi-Sri-server"
  } 
}
