provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "Demo-Server" {
    ami = "ami-0efc43a4067fe9a3e"
    instance_type = "t2.micro" 
  
 tags = {
    Name = "Demo-server"
  } 
}

resource "aws_s3_bucket" "Demo-bucket" {
    bucket = "my-test-bucket-1213121321"
    acl = "private"

 tags = {
    Name = "Sri-Bucket"
  } 
}
