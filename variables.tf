variable "biglake_iceberg_namespaces" {
  description = <<EOT
Map of biglake_iceberg_namespaces, attributes below
Required:
    - catalog
    - namespace_id
Optional:
    - deletion_policy
    - project
    - properties
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    catalog         = string
    namespace_id    = string
    deletion_policy = optional(string)
    project         = optional(string)
    properties      = optional(map(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

