variable "connect_routing_profile_lookup" {
  description = <<EOT
Map of connect_routing_profile_lookup, attributes below
Required:
    - instance_id
Optional:
    - name
    - region
    - routing_profile_id
    - tags
EOT

  type = map(object({
    instance_id        = string
    name               = optional(string)
    region             = optional(string)
    routing_profile_id = optional(string)
    tags               = optional(map(string))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

