output "vpc_id" {
  description = "ID of the DEV VPC"
  value       = module.network.vpc_id
}

output "subnet_id" {
  description = "ID of the DEV public subnet"
  value       = module.network.public_subnet_id
}

output "instance_id" {
  description = "ID of the DEV EC2 instance"
  value       = module.ec2.instance_id
}

output "public_ip" {
  description = "Public IP of the DEV EC2 instance"
  value       = module.ec2.public_ip
}

output "public_dns" {
  description = "Public DNS of the DEV EC2 instance"
  value       = module.ec2.public_dns
}

output "security_group_id" {
  description = "ID of the DEV EC2 security group"
  value       = module.ec2.security_group_id
}