output "security_center_assessments" {
  description = "All security_center_assessment resources"
  value       = azurerm_security_center_assessment.security_center_assessments
}
output "security_center_assessments_additional_data" {
  description = "List of additional_data values across all security_center_assessments"
  value       = [for k, v in azurerm_security_center_assessment.security_center_assessments : v.additional_data]
}
output "security_center_assessments_assessment_policy_id" {
  description = "List of assessment_policy_id values across all security_center_assessments"
  value       = [for k, v in azurerm_security_center_assessment.security_center_assessments : v.assessment_policy_id]
}
output "security_center_assessments_status" {
  description = "List of status values across all security_center_assessments"
  value       = [for k, v in azurerm_security_center_assessment.security_center_assessments : v.status]
}
output "security_center_assessments_target_resource_id" {
  description = "List of target_resource_id values across all security_center_assessments"
  value       = [for k, v in azurerm_security_center_assessment.security_center_assessments : v.target_resource_id]
}

