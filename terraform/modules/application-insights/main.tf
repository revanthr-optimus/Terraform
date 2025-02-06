resource "azurerm_application_insights" "optimus-applications-insights" {
    name                = var.app_insights_config.app_insights_name
    location            = var.app_insights_config.location
    resource_group_name = var.app_insights_config.resource_group_name
    application_type    = var.app_insights_config.application_type
}
output "app_insights_id" {
    value = azurerm_application_insights.optimus-applications-insights.id
}