variable "datascience_model_group_artifacts" {
  description = <<EOT
Map of datascience_model_group_artifacts, attributes below
Required:
    - content_length
    - model_group_artifact
    - model_group_id
Optional:
    - content_disposition
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    content_length       = string
    model_group_artifact = string
    model_group_id       = string
    content_disposition  = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

