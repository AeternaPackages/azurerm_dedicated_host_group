# --- azurerm_dedicated_host_group ---
output "dedicated_host_groups_automatic_placement_enabled" {
  description = "Map of automatic_placement_enabled values across all dedicated_host_groups, keyed the same as var.dedicated_host_groups"
  value       = module.dedicated_host_groups.dedicated_host_groups_automatic_placement_enabled
}

output "dedicated_host_groups_location" {
  description = "Map of location values across all dedicated_host_groups, keyed the same as var.dedicated_host_groups"
  value       = module.dedicated_host_groups.dedicated_host_groups_location
}

output "dedicated_host_groups_name" {
  description = "Map of name values across all dedicated_host_groups, keyed the same as var.dedicated_host_groups"
  value       = module.dedicated_host_groups.dedicated_host_groups_name
}

output "dedicated_host_groups_platform_fault_domain_count" {
  description = "Map of platform_fault_domain_count values across all dedicated_host_groups, keyed the same as var.dedicated_host_groups"
  value       = module.dedicated_host_groups.dedicated_host_groups_platform_fault_domain_count
}

output "dedicated_host_groups_resource_group_name" {
  description = "Map of resource_group_name values across all dedicated_host_groups, keyed the same as var.dedicated_host_groups"
  value       = module.dedicated_host_groups.dedicated_host_groups_resource_group_name
}

output "dedicated_host_groups_tags" {
  description = "Map of tags values across all dedicated_host_groups, keyed the same as var.dedicated_host_groups"
  value       = module.dedicated_host_groups.dedicated_host_groups_tags
}

output "dedicated_host_groups_zone" {
  description = "Map of zone values across all dedicated_host_groups, keyed the same as var.dedicated_host_groups"
  value       = module.dedicated_host_groups.dedicated_host_groups_zone
}

# --- azurerm_dedicated_host ---
output "dedicated_hosts_auto_replace_on_failure" {
  description = "Map of auto_replace_on_failure values across all dedicated_hosts, keyed the same as var.dedicated_hosts"
  value       = module.dedicated_hosts.dedicated_hosts_auto_replace_on_failure
}

output "dedicated_hosts_dedicated_host_group_id" {
  description = "Map of dedicated_host_group_id values across all dedicated_hosts, keyed the same as var.dedicated_hosts"
  value       = module.dedicated_hosts.dedicated_hosts_dedicated_host_group_id
}

output "dedicated_hosts_license_type" {
  description = "Map of license_type values across all dedicated_hosts, keyed the same as var.dedicated_hosts"
  value       = module.dedicated_hosts.dedicated_hosts_license_type
}

output "dedicated_hosts_location" {
  description = "Map of location values across all dedicated_hosts, keyed the same as var.dedicated_hosts"
  value       = module.dedicated_hosts.dedicated_hosts_location
}

output "dedicated_hosts_name" {
  description = "Map of name values across all dedicated_hosts, keyed the same as var.dedicated_hosts"
  value       = module.dedicated_hosts.dedicated_hosts_name
}

output "dedicated_hosts_platform_fault_domain" {
  description = "Map of platform_fault_domain values across all dedicated_hosts, keyed the same as var.dedicated_hosts"
  value       = module.dedicated_hosts.dedicated_hosts_platform_fault_domain
}

output "dedicated_hosts_sku_name" {
  description = "Map of sku_name values across all dedicated_hosts, keyed the same as var.dedicated_hosts"
  value       = module.dedicated_hosts.dedicated_hosts_sku_name
}

output "dedicated_hosts_tags" {
  description = "Map of tags values across all dedicated_hosts, keyed the same as var.dedicated_hosts"
  value       = module.dedicated_hosts.dedicated_hosts_tags
}


