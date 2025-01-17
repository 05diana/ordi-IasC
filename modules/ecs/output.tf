
output "cluster_id" {
  description = "ECS Cluster ID"
  value       = module.ecs.cluster_id
}

output "cluster_arn" {
  description = "ECS Cluster ARN"
  value       = module.ecs.cluster_arn
}

output "cluster_name" {
  description = "ECS Cluster Name"
  value       = module.ecs.cluster_name
}

output "ssl_certificate_arn" {
  value = var.certificate_arn
}
