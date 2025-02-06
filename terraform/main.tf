
module "webapp-deployment" {
    source = "./modules/application"
    resource_group_name = local.resource_group_name
    webapp_environment=var.webapp_environment
}

module "networking-deployment" {
    source = "./modules/network"
    resource_group_name = local.resource_group_name // var.resource_group_name //
    api_environment=var.api_environment
    api_management_environment=var.api_management_environment
}

module "database-deployment" {
    source = "./modules/database"
    server=var.server  
    database=var.database 
}

module "Servicebus-deployment" {
    source = "./modules/azurebus"
    servicebus_config = var.servicebus_config
}   

module "function-app-deployment" {
  source = "./modules/Functionapp"
  function_app_config = var.function_app_config
  storage_account_name = module.storage_config.storage_account_name
  blob_connection_string = module.storage_config.blob_connection_string
  primary_access_key_conn = module.storage_config.primary_access_key_conn

  app_insights_instrumentation_key = module.application_insights_deployment // "azurerm_application_insights.optimus-applications-insights.instrumentation_key"
  app_insights_connection_string   = "azurerm_application_insights.optimus-applications-insights.connection_string"

  depends_on = [ module.storage_config ]
}

module "storage_config" {
    source = "./modules/Storage"
    storage_config = var.storage_config
}

module "application_insights_deployment" {
    source = "./modules/application-insights"
    app_insights_config = var.app_insights_config
}