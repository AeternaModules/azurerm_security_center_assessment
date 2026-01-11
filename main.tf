resource "azurerm_security_center_assessment" "security_center_assessments" {
  for_each = var.security_center_assessments

  assessment_policy_id = each.value.assessment_policy_id
  target_resource_id   = each.value.target_resource_id
  additional_data      = each.value.additional_data

  status {
    cause       = each.value.status.cause
    code        = each.value.status.code
    description = each.value.status.description
  }
}

