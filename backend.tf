terraform {
  backend "s3" {
    bucket         = "my-tf-us-east-2-state-file"
    key            = "TF-Code/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "my-table-us-east-2-dynamodb"
    encrypt        = true
  }
}
