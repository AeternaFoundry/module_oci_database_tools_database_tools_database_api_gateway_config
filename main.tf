resource "oci_database_tools_database_tools_database_api_gateway_config" "database_tools_database_tools_database_api_gateway_configs" {
  for_each = var.database_tools_database_tools_database_api_gateway_configs

  compartment_id  = each.value.compartment_id
  display_name    = each.value.display_name
  metadata_source = each.value.metadata_source
  type            = each.value.type
  defined_tags    = each.value.defined_tags
  freeform_tags   = each.value.freeform_tags

  dynamic "locks" {
    for_each = each.value.locks != null ? each.value.locks : []
    content {
      message             = locks.value.message
      related_resource_id = locks.value.related_resource_id
      time_created        = locks.value.time_created
      type                = locks.value.type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

