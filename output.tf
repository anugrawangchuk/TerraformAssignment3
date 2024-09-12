output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "public_subnet_id" {
  description = "The ID of the public subnet"
  value       = module.subnets.public_subnet_id
}

output "private_subnet_id" {
  description = "The ID of the private subnet"
  value       = module.subnets.private_subnet_id
}

output "public_instance_id" {
  description = "The ID of the public EC2 instance"
  value       = module.instances.public_instance_id
}

output "private_instance_id" {
  description = "The ID of the private EC2 instance"
  value       = module.instances.private_instance_id
}

output "public_security_group_id" {
  description = "The ID of the public security group"
  value       = module.security-groups.public_sg_id
}

output "private_security_group_id" {
  description = "The ID of the private security group"
  value       = module.security-groups.private_sg_id
}

