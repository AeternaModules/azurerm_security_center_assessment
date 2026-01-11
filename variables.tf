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
}

