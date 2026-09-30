variable "project_name" {
  description = "Project name used for resource naming"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "subnet_id" {
  description = "Subnet where the EC2 instance will be created"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for the security group"
  type        = string
}

variable "allowed_ssh_cidr" {
  description = "CIDR allowed to connect through SSH"
  type        = string
}

variable "allowed_http_cidr" {
  description = "CIDR allowed to connect through HTTP"
  type        = string
  default     = ""
}

variable "root_volume_size" {
  description = "Root EBS volume size in GB"
  type        = number
}

variable "key_name" {
  description = "AWS EC2 key pair name"
  type        = string
}

variable "user_data" {
  description = "User data script for EC2 initialization"
  type        = string
  default     = ""
}