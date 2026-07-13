variable "security_center_assessments" {
  description = <<EOT
Map of security_center_assessments, attributes below
Required:
    - assessment_policy_id
    - target_resource_id
    - status (block):
        - cause (optional)
        - code (required)
        - description (optional)
Optional:
    - additional_data
EOT

  type = map(object({
    assessment_policy_id = string
    target_resource_id   = string
    additional_data      = optional(map(string))
    status = object({
      cause       = optional(string)
      code        = string
      description = optional(string)
    })
  }))
  validation {
    condition = alltrue([
      for k, v in var.security_center_assessments : (
        v.status.cause == null || (length(v.status.cause) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.security_center_assessments : (
        v.status.description == null || (length(v.status.description) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

