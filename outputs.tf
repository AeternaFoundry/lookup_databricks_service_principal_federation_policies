output "service_principal_federation_policies_lookup_page_size" {
  description = "Map of page_size values across all service_principal_federation_policies_lookup, keyed the same as var.service_principal_federation_policies_lookup except keys with no page_size are omitted"
  value       = { for k, v in data.databricks_service_principal_federation_policies.service_principal_federation_policies_lookup : k => v.page_size if v.page_size != null }
}
output "service_principal_federation_policies_lookup_policies" {
  description = "Map of policies values across all service_principal_federation_policies_lookup, keyed the same as var.service_principal_federation_policies_lookup except keys with no policies are omitted"
  value       = { for k, v in data.databricks_service_principal_federation_policies.service_principal_federation_policies_lookup : k => v.policies if v.policies != null && length(v.policies) > 0 }
}
output "service_principal_federation_policies_lookup_service_principal_id" {
  description = "Map of service_principal_id values across all service_principal_federation_policies_lookup, keyed the same as var.service_principal_federation_policies_lookup except keys with no service_principal_id are omitted"
  value       = { for k, v in data.databricks_service_principal_federation_policies.service_principal_federation_policies_lookup : k => v.service_principal_id if v.service_principal_id != null }
}

