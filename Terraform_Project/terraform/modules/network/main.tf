
resource "azurerm_api_management" "optimus-apimanagement" {
    for_each = var.api_management_environment
    name                = each.value.name
    location            = each.value.location
    resource_group_name = var.resource_group_name
    publisher_name      = each.value.publisher_name
    publisher_email     = each.value.publisher_email
    sku_name            = each.value.sku_name
}

output "apim_id" {
    value = azurerm_api_management.optimus-apimanagement[*]
}

resource "azurerm_api_management_api" "optimus-api" {
    for_each = var.api_environment
    name                = each.value.name
    resource_group_name = var.resource_group_name
    api_management_name = "api56963" // azurerm_api_management.optimus-apimanagement.name //
    revision            = "1"
    display_name        = each.value.display_name
    path                = each.value.path
    protocols           = each.value.protocols // ["https"] //

    import {
        content_format = each.value.content_format
        content_value  = each.value.content_value
    }
}

output "api_id" {
    value = azurerm_api_management_api.optimus-api[*]
}