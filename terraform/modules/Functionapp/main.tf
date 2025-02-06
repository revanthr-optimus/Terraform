

resource "azurerm_app_service_plan" "functionapp-plan20365" {
    name                = var.function_app_config.app_service_plan_name 
    location            = var.function_app_config.location
    resource_group_name = var.function_app_config.resource_group_name
    kind                = "FunctionApp"
    reserved            = true

    sku {
        tier = "Dynamic"
        size = "Y1"
    }
}

resource "azurerm_function_app" "functionapp23656" {
    name                       = var.function_app_config.function_app_name
    location                   = var.function_app_config.location
    resource_group_name        = var.function_app_config.resource_group_name
    app_service_plan_id        = azurerm_app_service_plan.functionapp-plan20365.id
    storage_account_name       = "optimusstorageaccount" // var.storage_account_name   
    storage_account_access_key = "primary_access_key" //var.primary_access_key
    version                    = "~3"

    app_settings = {
        FUNCTIONS_WORKER_RUNTIME = "dotnet"
        AzureWebJobsStorage      = "blob_connection_string" //var.blob_connection_string
        "APPINSIGHTS_INSTRUMENTATIONKEY" = azurerm_application_insights.optimus-applications-insights.instrumentation_key
        "APPLICATIONINSIGHTS_CONNECTION_STRING" = azurerm_application_insights.optimus-applications-insights.connection_string
    }
}

output "function_app_id" {
    value = azurerm_function_app.functionapp23656.id
}