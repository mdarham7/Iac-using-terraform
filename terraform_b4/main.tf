provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "arham" {
    instance_type = "t2.micro"
    ami = "ami-080e1f13689e07408"
}

resource "aws_s3_bucket" "s3_bucket" {
    bucket = "arham-s3-demo"
}

resource "aws_dynamodb_table" "terraform_lock" {
    name = "terraform_lock"
    billing_mode =  "PAY_PER_REQUEST"
    hash_key = "LockID"
    attribute {
        name = "LockID"
        type = "S"
    }
}