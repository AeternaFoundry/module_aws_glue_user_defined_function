output "glue_user_defined_functions_id" {
  description = "Map of id values across all glue_user_defined_functions, keyed the same as var.glue_user_defined_functions"
  value       = { for k, v in aws_glue_user_defined_function.glue_user_defined_functions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "glue_user_defined_functions_arn" {
  description = "Map of arn values across all glue_user_defined_functions, keyed the same as var.glue_user_defined_functions"
  value       = { for k, v in aws_glue_user_defined_function.glue_user_defined_functions : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "glue_user_defined_functions_catalog_id" {
  description = "Map of catalog_id values across all glue_user_defined_functions, keyed the same as var.glue_user_defined_functions"
  value       = { for k, v in aws_glue_user_defined_function.glue_user_defined_functions : k => v.catalog_id if v.catalog_id != null && length(v.catalog_id) > 0 }
}
output "glue_user_defined_functions_class_name" {
  description = "Map of class_name values across all glue_user_defined_functions, keyed the same as var.glue_user_defined_functions"
  value       = { for k, v in aws_glue_user_defined_function.glue_user_defined_functions : k => v.class_name if v.class_name != null && length(v.class_name) > 0 }
}
output "glue_user_defined_functions_create_time" {
  description = "Map of create_time values across all glue_user_defined_functions, keyed the same as var.glue_user_defined_functions"
  value       = { for k, v in aws_glue_user_defined_function.glue_user_defined_functions : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "glue_user_defined_functions_database_name" {
  description = "Map of database_name values across all glue_user_defined_functions, keyed the same as var.glue_user_defined_functions"
  value       = { for k, v in aws_glue_user_defined_function.glue_user_defined_functions : k => v.database_name if v.database_name != null && length(v.database_name) > 0 }
}
output "glue_user_defined_functions_name" {
  description = "Map of name values across all glue_user_defined_functions, keyed the same as var.glue_user_defined_functions"
  value       = { for k, v in aws_glue_user_defined_function.glue_user_defined_functions : k => v.name if v.name != null && length(v.name) > 0 }
}
output "glue_user_defined_functions_owner_name" {
  description = "Map of owner_name values across all glue_user_defined_functions, keyed the same as var.glue_user_defined_functions"
  value       = { for k, v in aws_glue_user_defined_function.glue_user_defined_functions : k => v.owner_name if v.owner_name != null && length(v.owner_name) > 0 }
}
output "glue_user_defined_functions_owner_type" {
  description = "Map of owner_type values across all glue_user_defined_functions, keyed the same as var.glue_user_defined_functions"
  value       = { for k, v in aws_glue_user_defined_function.glue_user_defined_functions : k => v.owner_type if v.owner_type != null && length(v.owner_type) > 0 }
}
output "glue_user_defined_functions_region" {
  description = "Map of region values across all glue_user_defined_functions, keyed the same as var.glue_user_defined_functions"
  value       = { for k, v in aws_glue_user_defined_function.glue_user_defined_functions : k => v.region if v.region != null && length(v.region) > 0 }
}
output "glue_user_defined_functions_resource_uris" {
  description = "Map of resource_uris values across all glue_user_defined_functions, keyed the same as var.glue_user_defined_functions"
  value       = { for k, v in aws_glue_user_defined_function.glue_user_defined_functions : k => v.resource_uris if v.resource_uris != null && length(v.resource_uris) > 0 }
}

