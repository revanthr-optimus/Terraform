
resource "azurerm_mssql_server" "mssql-server" {
  name                         = var.server[0].name
  resource_group_name          = var.server[0].resource_group_name
  location                     = var.server[0].location
  version                      = var.server[0].version
  administrator_login          = var.server[0].administrator_login
  administrator_login_password = var.server[0].administrator_login_password
}

resource "azurerm_mssql_database" "mssql-database" {
  name         = var.database[0].name
  server_id    = azurerm_mssql_server.mssql-server.id
  collation    = var.database[0].collation
  license_type = var.database[0].license_type
  max_size_gb  = var.database[0].max_size_gb
  sku_name     = var.database[0].sku_name
  enclave_type = var.database[0].enclave_type


  # prevent the possibility of accidental data loss
  lifecycle {
    prevent_destroy = true
  }
}