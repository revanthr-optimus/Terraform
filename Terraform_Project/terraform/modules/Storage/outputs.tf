output "storage_account_name" {
    value = var.azurerm_storage_account.storageaccount223.name
}

output "primary_access_key_conn" {
    value = azurerm_storage_account.storageaccount223.primary_access_key
    sensitive = true
}

output "blob_connection_string" {
    value = azurerm_storage_account.storageaccount223.primary_blob_connection_string
    sensitive = true
}