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
  # --- Unconfirmed validation candidates, derived from azurerm_security_center_assessment's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: assessment_policy_id
  #   source:    [from validate.AssessmentMetadataID] !ok
  # path: assessment_policy_id
  #   source:    [from validate.AssessmentMetadataID] err != nil
  # path: target_resource_id
  #   source:    [from azure.ValidateResourceID] !ok
  # path: target_resource_id
  #   source:    [from azure.ValidateResourceID] err != nil
  # path: status.code
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
}

