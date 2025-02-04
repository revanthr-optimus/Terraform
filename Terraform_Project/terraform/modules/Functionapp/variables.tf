variable "function_app_config" {
    type = object({
        resource_group_name                = string
        location                           = string
        app_service_plan_name              = string
        function_app_name                  = string
        storage_account_name               = string
        storage_account_access_key         = string
        storage_account_blob_connection_string = string
    })
}
