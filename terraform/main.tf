/*resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}*/

data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

module "storage" {
  source = "./modules/storage"

  resource_group_name  = data.azurerm_resource_group.rg.name
  location             = data.azurerm_resource_group.rg.location
  storage_account_name = var.storage_account_name
}

/*module "frontdoor" {
  source = "./modules/frondoor"

  resource_group_name = data.azurerm_resource_group.rg.name
  fd_name             = var.fd_name
  endpoint_name       = var.endpoint_name
  origin_group_name   = var.origin_group_name
  fd_origin_name      = var.fd_origin_name
  fd_route            = var.fd_route

  count = var.enable_frontdoor ? 1 : 0



  storage_web_host = module.storage.static_web_host
}*/
