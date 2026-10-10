resource "aws_lightsail_database" "lightsail_databases" {
  for_each = var.lightsail_databases

  blueprint_id                 = each.value.blueprint_id
  bundle_id                    = each.value.bundle_id
  master_database_name         = each.value.master_database_name
  master_password              = each.value.master_password
  master_username              = each.value.master_username
  relational_database_name     = each.value.relational_database_name
  skip_final_snapshot          = each.value.skip_final_snapshot
  region                       = each.value.region
  publicly_accessible          = each.value.publicly_accessible
  preferred_maintenance_window = each.value.preferred_maintenance_window
  backup_retention_enabled     = each.value.backup_retention_enabled
  final_snapshot_name          = each.value.final_snapshot_name
  tags                         = each.value.tags
  availability_zone            = each.value.availability_zone
  apply_immediately            = each.value.apply_immediately
  preferred_backup_window      = each.value.preferred_backup_window
  tags_all                     = each.value.tags_all
}

