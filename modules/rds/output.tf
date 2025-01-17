
output "db_instance_arn" {
  value = module.db.db_instance_arn
}

output "db_instance_endpoint" {
  value = module.db.db_instance_endpoint
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
