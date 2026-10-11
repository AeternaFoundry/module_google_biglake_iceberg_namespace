resource "google_biglake_iceberg_namespace" "biglake_iceberg_namespaces" {
  for_each = var.biglake_iceberg_namespaces

  catalog         = each.value.catalog
  namespace_id    = each.value.namespace_id
  deletion_policy = each.value.deletion_policy
  project         = each.value.project
  properties      = each.value.properties

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

