variable "service_principal_federation_policies_lookup" {
  description = <<EOT
Map of service_principal_federation_policies_lookup, attributes below
Required:
    - service_principal_id
Optional:
    - page_size
EOT

  type = map(object({
    service_principal_id = number
    page_size            = optional(number)
  }))
}

