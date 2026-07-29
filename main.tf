locals {
  dedicated_host_groups = { for k1, v1 in var.dedicated_host_groups : k1 => { automatic_placement_enabled = v1.automatic_placement_enabled, location = v1.location, name = v1.name, platform_fault_domain_count = v1.platform_fault_domain_count, resource_group_name = v1.resource_group_name, tags = v1.tags, zone = v1.zone } }

  dedicated_hosts = merge([
    for k1, v1 in var.dedicated_host_groups : {
      for k2, v2 in coalesce(v1.dedicated_hosts, {}) :
      "${k1}/${k2}" => merge(v2, {
        dedicated_host_group_id = module.dedicated_host_groups.dedicated_host_groups_id["${k1}"]
      })
    }
  ]...)
}

module "dedicated_host_groups" {
  source                = "git::https://github.com/AeternaModules/azurerm_dedicated_host_group.git?ref=v5.0.0"
  dedicated_host_groups = local.dedicated_host_groups
}

module "dedicated_hosts" {
  source          = "git::https://github.com/AeternaModules/azurerm_dedicated_host.git?ref=v5.0.0"
  dedicated_hosts = local.dedicated_hosts
  depends_on      = [module.dedicated_host_groups]
}

