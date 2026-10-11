resource "oci_datascience_model_group_artifact" "datascience_model_group_artifacts" {
  for_each = var.datascience_model_group_artifacts

  content_length       = each.value.content_length
  model_group_artifact = each.value.model_group_artifact
  model_group_id       = each.value.model_group_id
  content_disposition  = each.value.content_disposition

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

