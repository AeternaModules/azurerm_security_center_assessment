output "security_center_assessments_additional_data" {
  description = "Map of additional_data values across all security_center_assessments, keyed the same as var.security_center_assessments"
  value       = { for k, v in azurerm_security_center_assessment.security_center_assessments : k => v.additional_data }
}
output "security_center_assessments_assessment_policy_id" {
  description = "Map of assessment_policy_id values across all security_center_assessments, keyed the same as var.security_center_assessments"
  value       = { for k, v in azurerm_security_center_assessment.security_center_assessments : k => v.assessment_policy_id }
}
output "security_center_assessments_status" {
  description = "Map of status values across all security_center_assessments, keyed the same as var.security_center_assessments"
  value       = { for k, v in azurerm_security_center_assessment.security_center_assessments : k => v.status }
}
output "security_center_assessments_target_resource_id" {
  description = "Map of target_resource_id values across all security_center_assessments, keyed the same as var.security_center_assessments"
  value       = { for k, v in azurerm_security_center_assessment.security_center_assessments : k => v.target_resource_id }
}

