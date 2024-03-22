provider "aws" {
    region = "us-east-1"
}

module "ec2_instance" {
    source = "./modules/ec2_instance"
    ami_value = "ami-080e1f13689e07408"
    instance_type = "t2.micro"
    subnet_id_value = "subnet-086c84d1f68c9d4b2"
}   