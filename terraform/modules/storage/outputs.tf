output "storage_account_id" {
  value = azurerm_storage_account.storage.id
}

output "static_web_url" {
  value = azurerm_storage_account.storage.primary_web_endpoint
}

output "static_web_host" {
  value = replace(
    replace(
      azurerm_storage_account.storage.primary_web_endpoint,
      "https://",
      ""
    ),
    "/",
    ""
  )
}
