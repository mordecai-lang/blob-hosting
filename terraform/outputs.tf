output "static_site_url" {
  value = module.storage.static_web_url
}

/*output "frontdoor_url" {
  value = var.enable_frontdoor ? module.frontdoor[0].frontdoor_url : null
}*/
