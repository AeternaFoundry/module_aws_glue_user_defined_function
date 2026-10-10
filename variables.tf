variable "glue_user_defined_functions" {
  description = <<EOT
Map of glue_user_defined_functions, attributes below
Required:
    - class_name
    - database_name
    - name
    - owner_name
    - owner_type
Optional:
    - catalog_id
    - region
    - resource_uris (block):
        - resource_type (required)
        - uri (required)
EOT

  type = map(object({
    class_name    = string
    database_name = string
    name          = string
    owner_name    = string
    owner_type    = string
    catalog_id    = optional(string)
    region        = optional(string)
    resource_uris = optional(list(object({
      resource_type = string
      uri           = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.glue_user_defined_functions : (
        v.resource_uris == null || (length(v.resource_uris) <= 1000)
      )
    ])
    error_message = "Each resource_uris list must contain at most 1000 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.glue_user_defined_functions : (
        length(v.class_name) >= 1 && length(v.class_name) <= 255
      )
    ])
    error_message = "must be between 1 and 255 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.glue_user_defined_functions : (
        length(v.owner_name) >= 1 && length(v.owner_name) <= 255
      )
    ])
    error_message = "must be between 1 and 255 characters"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

