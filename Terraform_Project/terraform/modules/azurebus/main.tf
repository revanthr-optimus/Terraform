resource "azurerm_servicebus_namespace" "Servicebus277" {
    name                = var.servicebus_config.namespace_name
    location            = var.servicebus_config.location
    resource_group_name = var.servicebus_config.resource_group_name
    sku                 = var.servicebus_config.sku
}

data "azurerm_servicebus_queue" "Servicebus2858" {
  name         = var.servicebus_config.queue_name
  namespace_id = azurerm_servicebus_namespace.Servicebus277.id
}

output "id" {
  value = data.azurerm_servicebus_queue.Servicebus2858.id
}

output "servicebus_connection_string" {
    value = azurerm_servicebus_namespace.Servicebus277.default_primary_connection_string
}

