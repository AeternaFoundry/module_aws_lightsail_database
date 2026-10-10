output "lightsail_databases_id" {
  description = "Map of id values across all lightsail_databases, keyed the same as var.lightsail_databases"
  value       = { for k, v in aws_lightsail_database.lightsail_databases : k => v.id if v.id != null && length(v.id) > 0 }
}
output "lightsail_databases_apply_immediately" {
  description = "Map of apply_immediately values across all lightsail_databases, keyed the same as var.lightsail_databases"
  value       = { for k, v in aws_lightsail_database.lightsail_databases : k => v.apply_immediately if v.apply_immediately != null }
}
output "lightsail_databases_arn" {
  description = "Map of arn values across all lightsail_databases, keyed the same as var.lightsail_databases"
  value       = { for k, v in aws_lightsail_database.lightsail_databases : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "lightsail_databases_availability_zone" {
  description = "Map of availability_zone values across all lightsail_databases, keyed the same as var.lightsail_databases"
  value       = { for k, v in aws_lightsail_database.lightsail_databases : k => v.availability_zone if v.availability_zone != null && length(v.availability_zone) > 0 }
}
output "lightsail_databases_backup_retention_enabled" {
  description = "Map of backup_retention_enabled values across all lightsail_databases, keyed the same as var.lightsail_databases"
  value       = { for k, v in aws_lightsail_database.lightsail_databases : k => v.backup_retention_enabled if v.backup_retention_enabled != null }
}
output "lightsail_databases_blueprint_id" {
  description = "Map of blueprint_id values across all lightsail_databases, keyed the same as var.lightsail_databases"
  value       = { for k, v in aws_lightsail_database.lightsail_databases : k => v.blueprint_id if v.blueprint_id != null && length(v.blueprint_id) > 0 }
}
output "lightsail_databases_bundle_id" {
  description = "Map of bundle_id values across all lightsail_databases, keyed the same as var.lightsail_databases"
  value       = { for k, v in aws_lightsail_database.lightsail_databases : k => v.bundle_id if v.bundle_id != null && length(v.bundle_id) > 0 }
}
output "lightsail_databases_ca_certificate_identifier" {
  description = "Map of ca_certificate_identifier values across all lightsail_databases, keyed the same as var.lightsail_databases"
  value       = { for k, v in aws_lightsail_database.lightsail_databases : k => v.ca_certificate_identifier if v.ca_certificate_identifier != null && length(v.ca_certificate_identifier) > 0 }
}
output "lightsail_databases_cpu_count" {
  description = "Map of cpu_count values across all lightsail_databases, keyed the same as var.lightsail_databases"
  value       = { for k, v in aws_lightsail_database.lightsail_databases : k => v.cpu_count if v.cpu_count != null }
}
output "lightsail_databases_created_at" {
  description = "Map of created_at values across all lightsail_databases, keyed the same as var.lightsail_databases"
  value       = { for k, v in aws_lightsail_database.lightsail_databases : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "lightsail_databases_disk_size" {
  description = "Map of disk_size values across all lightsail_databases, keyed the same as var.lightsail_databases"
  value       = { for k, v in aws_lightsail_database.lightsail_databases : k => v.disk_size if v.disk_size != null }
}
output "lightsail_databases_engine" {
  description = "Map of engine values across all lightsail_databases, keyed the same as var.lightsail_databases"
  value       = { for k, v in aws_lightsail_database.lightsail_databases : k => v.engine if v.engine != null && length(v.engine) > 0 }
}
output "lightsail_databases_engine_version" {
  description = "Map of engine_version values across all lightsail_databases, keyed the same as var.lightsail_databases"
  value       = { for k, v in aws_lightsail_database.lightsail_databases : k => v.engine_version if v.engine_version != null && length(v.engine_version) > 0 }
}
output "lightsail_databases_final_snapshot_name" {
  description = "Map of final_snapshot_name values across all lightsail_databases, keyed the same as var.lightsail_databases"
  value       = { for k, v in aws_lightsail_database.lightsail_databases : k => v.final_snapshot_name if v.final_snapshot_name != null && length(v.final_snapshot_name) > 0 }
}
output "lightsail_databases_master_database_name" {
  description = "Map of master_database_name values across all lightsail_databases, keyed the same as var.lightsail_databases"
  value       = { for k, v in aws_lightsail_database.lightsail_databases : k => v.master_database_name if v.master_database_name != null && length(v.master_database_name) > 0 }
}
output "lightsail_databases_master_endpoint_address" {
  description = "Map of master_endpoint_address values across all lightsail_databases, keyed the same as var.lightsail_databases"
  value       = { for k, v in aws_lightsail_database.lightsail_databases : k => v.master_endpoint_address if v.master_endpoint_address != null && length(v.master_endpoint_address) > 0 }
}
output "lightsail_databases_master_endpoint_port" {
  description = "Map of master_endpoint_port values across all lightsail_databases, keyed the same as var.lightsail_databases"
  value       = { for k, v in aws_lightsail_database.lightsail_databases : k => v.master_endpoint_port if v.master_endpoint_port != null }
}
output "lightsail_databases_master_password" {
  description = "Map of master_password values across all lightsail_databases, keyed the same as var.lightsail_databases"
  value       = { for k, v in aws_lightsail_database.lightsail_databases : k => v.master_password if v.master_password != null && length(v.master_password) > 0 }
  sensitive   = true
}
output "lightsail_databases_master_username" {
  description = "Map of master_username values across all lightsail_databases, keyed the same as var.lightsail_databases"
  value       = { for k, v in aws_lightsail_database.lightsail_databases : k => v.master_username if v.master_username != null && length(v.master_username) > 0 }
}
output "lightsail_databases_preferred_backup_window" {
  description = "Map of preferred_backup_window values across all lightsail_databases, keyed the same as var.lightsail_databases"
  value       = { for k, v in aws_lightsail_database.lightsail_databases : k => v.preferred_backup_window if v.preferred_backup_window != null && length(v.preferred_backup_window) > 0 }
}
output "lightsail_databases_preferred_maintenance_window" {
  description = "Map of preferred_maintenance_window values across all lightsail_databases, keyed the same as var.lightsail_databases"
  value       = { for k, v in aws_lightsail_database.lightsail_databases : k => v.preferred_maintenance_window if v.preferred_maintenance_window != null && length(v.preferred_maintenance_window) > 0 }
}
output "lightsail_databases_publicly_accessible" {
  description = "Map of publicly_accessible values across all lightsail_databases, keyed the same as var.lightsail_databases"
  value       = { for k, v in aws_lightsail_database.lightsail_databases : k => v.publicly_accessible if v.publicly_accessible != null }
}
output "lightsail_databases_ram_size" {
  description = "Map of ram_size values across all lightsail_databases, keyed the same as var.lightsail_databases"
  value       = { for k, v in aws_lightsail_database.lightsail_databases : k => v.ram_size if v.ram_size != null }
}
output "lightsail_databases_region" {
  description = "Map of region values across all lightsail_databases, keyed the same as var.lightsail_databases"
  value       = { for k, v in aws_lightsail_database.lightsail_databases : k => v.region if v.region != null && length(v.region) > 0 }
}
output "lightsail_databases_relational_database_name" {
  description = "Map of relational_database_name values across all lightsail_databases, keyed the same as var.lightsail_databases"
  value       = { for k, v in aws_lightsail_database.lightsail_databases : k => v.relational_database_name if v.relational_database_name != null && length(v.relational_database_name) > 0 }
}
output "lightsail_databases_secondary_availability_zone" {
  description = "Map of secondary_availability_zone values across all lightsail_databases, keyed the same as var.lightsail_databases"
  value       = { for k, v in aws_lightsail_database.lightsail_databases : k => v.secondary_availability_zone if v.secondary_availability_zone != null && length(v.secondary_availability_zone) > 0 }
}
output "lightsail_databases_skip_final_snapshot" {
  description = "Map of skip_final_snapshot values across all lightsail_databases, keyed the same as var.lightsail_databases"
  value       = { for k, v in aws_lightsail_database.lightsail_databases : k => v.skip_final_snapshot if v.skip_final_snapshot != null }
}
output "lightsail_databases_support_code" {
  description = "Map of support_code values across all lightsail_databases, keyed the same as var.lightsail_databases"
  value       = { for k, v in aws_lightsail_database.lightsail_databases : k => v.support_code if v.support_code != null && length(v.support_code) > 0 }
}
output "lightsail_databases_tags" {
  description = "Map of tags values across all lightsail_databases, keyed the same as var.lightsail_databases"
  value       = { for k, v in aws_lightsail_database.lightsail_databases : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "lightsail_databases_tags_all" {
  description = "Map of tags_all values across all lightsail_databases, keyed the same as var.lightsail_databases"
  value       = { for k, v in aws_lightsail_database.lightsail_databases : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

