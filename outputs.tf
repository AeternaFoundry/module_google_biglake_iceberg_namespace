output "biglake_iceberg_namespaces_id" {
  description = "Map of id values across all biglake_iceberg_namespaces, keyed the same as var.biglake_iceberg_namespaces except keys with no id are omitted"
  value       = { for k, v in google_biglake_iceberg_namespace.biglake_iceberg_namespaces : k => v.id if v.id != null && length(v.id) > 0 }
}
output "biglake_iceberg_namespaces_catalog" {
  description = "Map of catalog values across all biglake_iceberg_namespaces, keyed the same as var.biglake_iceberg_namespaces except keys with no catalog are omitted"
  value       = { for k, v in google_biglake_iceberg_namespace.biglake_iceberg_namespaces : k => v.catalog if v.catalog != null && length(v.catalog) > 0 }
}
output "biglake_iceberg_namespaces_deletion_policy" {
  description = "Map of deletion_policy values across all biglake_iceberg_namespaces, keyed the same as var.biglake_iceberg_namespaces except keys with no deletion_policy are omitted"
  value       = { for k, v in google_biglake_iceberg_namespace.biglake_iceberg_namespaces : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "biglake_iceberg_namespaces_namespace_id" {
  description = "Map of namespace_id values across all biglake_iceberg_namespaces, keyed the same as var.biglake_iceberg_namespaces except keys with no namespace_id are omitted"
  value       = { for k, v in google_biglake_iceberg_namespace.biglake_iceberg_namespaces : k => v.namespace_id if v.namespace_id != null && length(v.namespace_id) > 0 }
}
output "biglake_iceberg_namespaces_project" {
  description = "Map of project values across all biglake_iceberg_namespaces, keyed the same as var.biglake_iceberg_namespaces except keys with no project are omitted"
  value       = { for k, v in google_biglake_iceberg_namespace.biglake_iceberg_namespaces : k => v.project if v.project != null && length(v.project) > 0 }
}
output "biglake_iceberg_namespaces_properties" {
  description = "Map of properties values across all biglake_iceberg_namespaces, keyed the same as var.biglake_iceberg_namespaces except keys with no properties are omitted"
  value       = { for k, v in google_biglake_iceberg_namespace.biglake_iceberg_namespaces : k => v.properties if v.properties != null && length(v.properties) > 0 }
}

