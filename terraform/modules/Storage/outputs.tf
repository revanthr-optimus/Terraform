output "storage_account_name" {
    value = "storageaccount223" //var.azurerm_storage_account.storageaccount223.name
}

output "primary-access-key" {
    value = "primary_access_key" //azurerm_storage_account.storageaccount223.primary_access_key
    sensitive = true
}

output "blob_connection_string" {
    value = "primary_blob_connection_string" //azurerm_storage_account.storageaccount223.primary_blob_connection_string
    sensitive = true
}