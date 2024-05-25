#Creating VPC using VPC module

module "vpc" {
    source = "./vpc"
    vpc_name = var.vpc_name
    vpc_cidr_block = var.vpc_cidr_block
    
}

#Creating S3 bucket using S3 module

module "mys3" {
  source      = "./s3"
  bucket_name = var.bucket_name
}

# Creating Prod EC2 instance with EC2 Module
module "prod-instance" {
  source = "./ec2"
  ami_id        = var.ami_id
  ec2_name      = var.ec2_name
  instance_type = var.instance_type
}