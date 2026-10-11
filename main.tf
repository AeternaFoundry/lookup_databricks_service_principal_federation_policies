data "databricks_service_principal_federation_policies" "service_principal_federation_policies_lookup" {
  for_each = var.service_principal_federation_policies_lookup

  service_principal_id = each.value.service_principal_id
  page_size            = each.value.page_size
}

