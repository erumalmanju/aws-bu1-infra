variable "aws_region" {
  description = "AWS region where resources will be deployed"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "ec2_ami" {
  description = "AMI ID for EC2 instance"
  type        = string
  default     = "ami-12345678"
}

variable "ec2_instance_type" {
  description = "Instance type for EC2"
  type        = string
  default     = "t2.micro"
}

variable "ec2_instance_name" {
  description = "Name for the EC2 instance"
  type        = string
  default     = "dev-instance"
}

variable "s3_bucket_name" {
  description = "S3 bucket name"
  type        = string
  default     = "dev-bucket"
}

variable "rds_instance_class" {
  description = "Instance class for RDS"
  type        = string
  default     = "db.t3.micro"
}

variable "rds_db_user" {
  description = "Database username"
  type        = string
  default     = "admin"
}

variable "rds_db_password" {
  description = "Database password"
  type        = string
  sensitive   = true
}

variable "rds_db_name" {
  description = "Database name"
  type        = string
  default     = "devdb"
}
