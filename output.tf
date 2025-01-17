## Global Ouput

## Variables
output "region" {
  description = "Region where the infrastructure is deployed"
  value       = var.region
}

output "vpc_cidr" {
  description = "VPC CIDR"
  value       = var.vpc_cidr
}

output "domain_name" {
  description = "FQDN Doname Name"
  value       = var.domain_name
}

output "db_user" {
  value = var.db_user
}

output "db_password" {
  value = var.db_password
}

output "db_name" {
  value = var.db_name
}

output "registry_base_url" {
  value = var.ecr_base_url
}

output "ssl_certificate_arn" {
  value = var.certificate_arn
}

## VPC
output "vpc_id" {
  description = "VPC ID Created"
  value       = module.vpc.vpc_id
}

output "private_subnet_ids" {
  description = "Private Subnts list"
  value       = module.vpc.private_subnet_ids
}

output "public_subnet_ids" {
  description = "Publics Subnts list"
  value       = module.vpc.public_subnet_ids
}

## Security
output "postgresql_sg_id" {
  value = module.security.postgresql_sg_id
}

output "ssh_sg_id" {
  description = "SSH Security Group ID"
  value       = module.security.ssh_sg_id
}

## bastion
output "bastion_public_dns" {
  value = module.hosts.bastion_public_dns
}

## DB
output "db_instance_endpoint" {
  value = module.db.db_instance_endpoint
}

## ECS
output "cluster_id" {
  description = "ECS Cluster ID"
  value       = module.ecs.cluster_id
}

output "cluster_arn" {
  description = "ECS Cluster ARN"
  value       = module.ecs.cluster_arn
}

output "cluster_name" {
  description = "ECS Cluster NAME"
  value       = module.ecs.cluster_name
}
