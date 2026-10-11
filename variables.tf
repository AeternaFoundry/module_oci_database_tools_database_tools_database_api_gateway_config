variable "database_tools_database_tools_database_api_gateway_configs" {
  description = <<EOT
Map of database_tools_database_tools_database_api_gateway_configs, attributes below
Required:
    - compartment_id
    - display_name
    - metadata_source
    - type
Optional:
    - defined_tags
    - freeform_tags
    - locks (block):
        - message (optional)
        - related_resource_id (optional)
        - time_created (optional)
        - type (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id  = string
    display_name    = string
    metadata_source = string
    type            = string
    defined_tags    = optional(map(string))
    freeform_tags   = optional(map(string))
    locks = optional(list(object({
      message             = optional(string)
      related_resource_id = optional(string)
      time_created        = optional(string)
      type                = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

