provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "Demo-Server" {
    ami = "ami-0efc43a4067fe9a3e"
    instance_type = "t2.micro" 
  
 tags = {
    Name = "Test-Server"
  } 
}

resource "aws_s3_bucket" "Demo-bucket" {
    bucket = "my-demo-test-12112121-bucket-namee"
    acl = "private"
  
 tags = {
    Name = "Test-bucket"
  } 
}
