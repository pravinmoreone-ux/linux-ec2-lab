variable "aws_region" {
  description = "AWS region for the environment"
  type        = string
}

variable "project_name" {
  description = "Project name"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
}

variable "availability_zone" {
  description = "Availability Zone for the public subnet"
  type        = string
}

variable "ami_id" {
  description = "Amazon Linux AMI ID"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "allowed_ssh_cidr" {
  description = "CIDR allowed to access SSH"
  type        = string
}

variable "allowed_http_cidr" {
  description = "CIDR allowed to access HTTP"
  type        = string
  default     = ""
}

variable "root_volume_size" {
  description = "Root EBS volume size in GB"
  type        = number
}

variable "key_name" {
  description = "EC2 key pair name"
  type        = string
}

variable "user_data" {
  description = "EC2 startup script"
  type        = string
  default     = ""
}
