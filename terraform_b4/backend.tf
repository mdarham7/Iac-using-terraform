terraform {
  backend "s3" {
    bucket = "arham-s3-demo"
    region = "us-east-1"
    key    = "arham/terraform.tfstate"
    dynamodb_table = "terraform_lock"
  }
}