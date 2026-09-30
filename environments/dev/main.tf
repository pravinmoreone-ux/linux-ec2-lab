terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region  = var.aws_region
  profile = "devops"
}

module "network" {
  source = "../../modules/network"

  project_name        = var.project_name
  environment         = var.environment
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  availability_zone   = var.availability_zone
}

module "ec2" {
  source = "../../modules/ec2"

  project_name        = var.project_name
  environment         = var.environment
  ami_id              = var.ami_id
  instance_type       = var.instance_type
  subnet_id           = module.network.public_subnet_id
  vpc_id              = module.network.vpc_id
  allowed_ssh_cidr    = var.allowed_ssh_cidr
  allowed_http_cidr   = var.allowed_http_cidr
  root_volume_size    = var.root_volume_size
  key_name            = var.key_name
  user_data           = var.user_data
}
