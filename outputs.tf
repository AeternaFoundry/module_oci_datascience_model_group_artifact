output "datascience_model_group_artifacts_id" {
  description = "Map of id values across all datascience_model_group_artifacts, keyed the same as var.datascience_model_group_artifacts except keys with no id are omitted"
  value       = { for k, v in oci_datascience_model_group_artifact.datascience_model_group_artifacts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "datascience_model_group_artifacts_content_disposition" {
  description = "Map of content_disposition values across all datascience_model_group_artifacts, keyed the same as var.datascience_model_group_artifacts except keys with no content_disposition are omitted"
  value       = { for k, v in oci_datascience_model_group_artifact.datascience_model_group_artifacts : k => v.content_disposition if v.content_disposition != null && length(v.content_disposition) > 0 }
}
output "datascience_model_group_artifacts_content_length" {
  description = "Map of content_length values across all datascience_model_group_artifacts, keyed the same as var.datascience_model_group_artifacts except keys with no content_length are omitted"
  value       = { for k, v in oci_datascience_model_group_artifact.datascience_model_group_artifacts : k => v.content_length if v.content_length != null && length(v.content_length) > 0 }
}
output "datascience_model_group_artifacts_model_group_artifact" {
  description = "Map of model_group_artifact values across all datascience_model_group_artifacts, keyed the same as var.datascience_model_group_artifacts except keys with no model_group_artifact are omitted"
  value       = { for k, v in oci_datascience_model_group_artifact.datascience_model_group_artifacts : k => v.model_group_artifact if v.model_group_artifact != null && length(v.model_group_artifact) > 0 }
}
output "datascience_model_group_artifacts_model_group_id" {
  description = "Map of model_group_id values across all datascience_model_group_artifacts, keyed the same as var.datascience_model_group_artifacts except keys with no model_group_id are omitted"
  value       = { for k, v in oci_datascience_model_group_artifact.datascience_model_group_artifacts : k => v.model_group_id if v.model_group_id != null && length(v.model_group_id) > 0 }
}

