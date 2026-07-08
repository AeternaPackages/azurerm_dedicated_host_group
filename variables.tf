variable "dedicated_host_groups" {
  description = <<EOT
Map of dedicated_host_groups, attributes below
Required:
    - location
    - name
    - platform_fault_domain_count
    - resource_group_name
Optional:
    - automatic_placement_enabled
    - tags
    - zone
Nested dedicated_hosts (azurerm_dedicated_host):
    Required:
        - location
        - name
        - platform_fault_domain
        - sku_name
    Optional:
        - auto_replace_on_failure
        - license_type
        - tags
EOT

  type = map(object({
    location                    = string
    name                        = string
    platform_fault_domain_count = number
    resource_group_name         = string
    automatic_placement_enabled = optional(bool) # Default: false
    tags                        = optional(map(string))
    zone                        = optional(string)
    dedicated_hosts = optional(map(object({
      location                = string
      name                    = string
      platform_fault_domain   = number
      sku_name                = string
      auto_replace_on_failure = optional(bool)   # Default: true
      license_type            = optional(string) # Default: "None"
      tags                    = optional(map(string))
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.dedicated_host_groups) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.dedicated_host_groups : [for kk in keys(coalesce(v0.dedicated_hosts, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
