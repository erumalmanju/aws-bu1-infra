terraform {
  required_version = ">= 1.0"
}

module "vpc" {
  source      = "git::https://github.com/erumalmanju/manju-terraform-aws-modules//vpc"
  cidr_block  = "10.0.0.0/16"
  vpc_name    = "dev-vpc"
  environment = "dev"
}

module "ec2" {
  source        = "git::https://github.com/erumalmanju/manju-terraform-aws-modules//ec2"
  ami           = "ami-12345678"
  instance_type = "t2.micro"
  subnet_id     = module.vpc.vpc_id
  instance_name = "dev-instance"
  environment   = "dev"
}
