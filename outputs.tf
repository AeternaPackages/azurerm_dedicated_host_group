# --- azurerm_dedicated_host_group ---
output "dedicated_host_groups" {
  description = "All dedicated_host_group resources"
  value       = module.dedicated_host_groups.dedicated_host_groups
}
output "dedicated_host_groups_automatic_placement_enabled" {
  description = "List of automatic_placement_enabled values across all dedicated_host_groups"
  value       = [for k, v in module.dedicated_host_groups.dedicated_host_groups : v.automatic_placement_enabled]
}
output "dedicated_host_groups_location" {
  description = "List of location values across all dedicated_host_groups"
  value       = [for k, v in module.dedicated_host_groups.dedicated_host_groups : v.location]
}
output "dedicated_host_groups_name" {
  description = "List of name values across all dedicated_host_groups"
  value       = [for k, v in module.dedicated_host_groups.dedicated_host_groups : v.name]
}
output "dedicated_host_groups_platform_fault_domain_count" {
  description = "List of platform_fault_domain_count values across all dedicated_host_groups"
  value       = [for k, v in module.dedicated_host_groups.dedicated_host_groups : v.platform_fault_domain_count]
}
output "dedicated_host_groups_resource_group_name" {
  description = "List of resource_group_name values across all dedicated_host_groups"
  value       = [for k, v in module.dedicated_host_groups.dedicated_host_groups : v.resource_group_name]
}
output "dedicated_host_groups_tags" {
  description = "List of tags values across all dedicated_host_groups"
  value       = [for k, v in module.dedicated_host_groups.dedicated_host_groups : v.tags]
}
output "dedicated_host_groups_zone" {
  description = "List of zone values across all dedicated_host_groups"
  value       = [for k, v in module.dedicated_host_groups.dedicated_host_groups : v.zone]
}


# --- azurerm_dedicated_host ---
output "dedicated_hosts" {
  description = "All dedicated_host resources"
  value       = module.dedicated_hosts.dedicated_hosts
}
output "dedicated_hosts_auto_replace_on_failure" {
  description = "List of auto_replace_on_failure values across all dedicated_hosts"
  value       = [for k, v in module.dedicated_hosts.dedicated_hosts : v.auto_replace_on_failure]
}
output "dedicated_hosts_dedicated_host_group_id" {
  description = "List of dedicated_host_group_id values across all dedicated_hosts"
  value       = [for k, v in module.dedicated_hosts.dedicated_hosts : v.dedicated_host_group_id]
}
output "dedicated_hosts_license_type" {
  description = "List of license_type values across all dedicated_hosts"
  value       = [for k, v in module.dedicated_hosts.dedicated_hosts : v.license_type]
}
output "dedicated_hosts_location" {
  description = "List of location values across all dedicated_hosts"
  value       = [for k, v in module.dedicated_hosts.dedicated_hosts : v.location]
}
output "dedicated_hosts_name" {
  description = "List of name values across all dedicated_hosts"
  value       = [for k, v in module.dedicated_hosts.dedicated_hosts : v.name]
}
output "dedicated_hosts_platform_fault_domain" {
  description = "List of platform_fault_domain values across all dedicated_hosts"
  value       = [for k, v in module.dedicated_hosts.dedicated_hosts : v.platform_fault_domain]
}
output "dedicated_hosts_sku_name" {
  description = "List of sku_name values across all dedicated_hosts"
  value       = [for k, v in module.dedicated_hosts.dedicated_hosts : v.sku_name]
}
output "dedicated_hosts_tags" {
  description = "List of tags values across all dedicated_hosts"
  value       = [for k, v in module.dedicated_hosts.dedicated_hosts : v.tags]
}



