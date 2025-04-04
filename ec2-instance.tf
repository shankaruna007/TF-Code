provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "Demo-Server" {
    ami = "ami-0efc43a4067fe9a3e"
    instance_type = "t2.micro" 
  
 tags = {
    Name = "Test-server"
  } 
}

resource "aws_s3_bucket" "Demo-Bucket" {
    bucket = "test-buckt-0efc43a4067fe9a3e"
  
 tags = {
    Name = "Test-bucket"
  } 
}
