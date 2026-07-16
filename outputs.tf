output "security_center_assessments_id" {
  description = "Map of id values across all security_center_assessments, keyed the same as var.security_center_assessments"
  value       = { for k, v in azurerm_security_center_assessment.security_center_assessments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "security_center_assessments_additional_data" {
  description = "Map of additional_data values across all security_center_assessments, keyed the same as var.security_center_assessments"
  value       = { for k, v in azurerm_security_center_assessment.security_center_assessments : k => v.additional_data if v.additional_data != null && length(v.additional_data) > 0 }
}
output "security_center_assessments_assessment_policy_id" {
  description = "Map of assessment_policy_id values across all security_center_assessments, keyed the same as var.security_center_assessments"
  value       = { for k, v in azurerm_security_center_assessment.security_center_assessments : k => v.assessment_policy_id if v.assessment_policy_id != null && length(v.assessment_policy_id) > 0 }
}
output "security_center_assessments_status" {
  description = "Map of status values across all security_center_assessments, keyed the same as var.security_center_assessments"
  value       = { for k, v in azurerm_security_center_assessment.security_center_assessments : k => v.status if v.status != null && length(v.status) > 0 }
}
output "security_center_assessments_target_resource_id" {
  description = "Map of target_resource_id values across all security_center_assessments, keyed the same as var.security_center_assessments"
  value       = { for k, v in azurerm_security_center_assessment.security_center_assessments : k => v.target_resource_id if v.target_resource_id != null && length(v.target_resource_id) > 0 }
}

