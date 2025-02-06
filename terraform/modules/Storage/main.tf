resource "azurerm_storage_account" "storageaccount223" {
    name                     = var.storage_config.storage_account_name
    resource_group_name      = var.storage_config.resource_group_name
    location                 = var.storage_config.location
    account_tier             = "Standard"
    account_replication_type = "LRS"
}

resource "azurerm_storage_container" "blob" {
    name                  = var.storage_config.container_name
    storage_account_id    = azurerm_storage_account.storageaccount223.id
    container_access_type = "private"
}

output "storage_account_id" {
    value = azurerm_storage_account.storageaccount223.id
}

output "storage_container_name" {
    value = azurerm_storage_container.blob.name
}

output "primary_blob_connection_string" {
    value = azurerm_storage_account.storageaccount223.primary_blob_connection_string
}

output "primary_access_key" {
    value = azurerm_storage_account.storageaccount223.primary_access_key
}