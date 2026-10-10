variable "lightsail_databases" {
  description = <<EOT
Map of lightsail_databases, attributes below
Required:
    - blueprint_id
    - bundle_id
    - master_database_name
    - master_password
    - master_username
    - relational_database_name
Optional:
    - apply_immediately
    - availability_zone
    - backup_retention_enabled
    - final_snapshot_name
    - preferred_backup_window
    - preferred_maintenance_window
    - publicly_accessible
    - region
    - skip_final_snapshot
    - tags
    - tags_all
EOT

  type = map(object({
    blueprint_id                 = string
    bundle_id                    = string
    master_database_name         = string
    master_password              = string
    master_username              = string
    relational_database_name     = string
    skip_final_snapshot          = optional(bool)
    region                       = optional(string)
    publicly_accessible          = optional(bool)
    preferred_maintenance_window = optional(string)
    backup_retention_enabled     = optional(bool)
    final_snapshot_name          = optional(string)
    tags                         = optional(map(string))
    availability_zone            = optional(string)
    apply_immediately            = optional(bool)
    preferred_backup_window      = optional(string)
    tags_all                     = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.lightsail_databases : (
        v.final_snapshot_name == null || ((length(v.final_snapshot_name) >= 2 && length(v.final_snapshot_name) <= 255) && (can(regex("^[0-9A-Za-z][0-9A-Za-z-]+[0-9A-Za-z]$", v.final_snapshot_name))))
      )
    ])
    error_message = "all of: must be between 2 and 255 characters; Must contain from 2 to 255 alphanumeric characters, or hyphens. The first and last character must be a letter or number"
  }
  validation {
    condition = alltrue([
      for k, v in var.lightsail_databases : (
        (length(v.master_database_name) >= 1 && length(v.master_database_name) <= 64) && (can(regex("^[A-Za-z]", v.master_database_name))) && (can(regex("^[0-9A-Za-z_]+$", v.master_database_name)))
      )
    ])
    error_message = "all of: must be between 1 and 64 characters; Must begin with a letter; Subsequent characters can be letters, underscores, or digits (0- 9)"
  }
  validation {
    condition = alltrue([
      for k, v in var.lightsail_databases : (
        (length(v.master_password) >= 8 && length(v.master_password) <= 128) && (can(regex("^[ -~][^@\\/\" ]+$", v.master_password)))
      )
    ])
    error_message = "all of: must be between 8 and 128 characters; The password can include any printable ASCII character except \"/\", \"\"\", or \"@\". It cannot contain spaces."
  }
  validation {
    condition = alltrue([
      for k, v in var.lightsail_databases : (
        (length(v.master_username) >= 1 && length(v.master_username) <= 63) && (can(regex("^[A-Za-z]", v.master_username))) && (can(regex("^[0-9A-Za-z_]+$", v.master_username)))
      )
    ])
    error_message = "all of: must be between 1 and 63 characters; Must begin with a letter; Subsequent characters can be letters, underscores, or digits (0- 9)"
  }
  validation {
    condition = alltrue([
      for k, v in var.lightsail_databases : (
        (length(v.relational_database_name) >= 2 && length(v.relational_database_name) <= 255) && (can(regex("^[^_.-]+[0-9A-Za-z-]+[^_.-]$", v.relational_database_name)))
      )
    ])
    error_message = "all of: must be between 2 and 255 characters; Must contain from 2 to 255 alphanumeric characters, or hyphens. The first and last character must be a letter or number"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

