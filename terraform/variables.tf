
variable "webapp_environment" {
     type = map(object({
        service_plan_os_type=string
        service_plan_sku=string
        service_plan_location=string
        web_app_name=string
     }
     ))
}


variable "api_management_environment" {
    type = map(object({
            name=string
            publisher_name=string
            publisher_email=string
            sku_name=string
            location=string
            apiname=string
            resource_group_name = string
     })
 
  )
}


variable "api_environment" {
    type = map(object({
      name            = string
      display_name    = string
      path            = string
      protocols       = list(string)
      content_format  = string
      content_value   = string
      apimname        = string
      resource_group_name = string
    })
    
  )
}


variable "server" {
    type=list(object(
    {
      name=string
      location=string
      version=string
      administrator_login=string
      administrator_login_password=string
      resource_group_name=string
    }
  ))
}



variable "database" {
    type=list(object(
    {
      name=string
      collation=string
      license_type=string
      max_size_gb=number
      sku_name=string
      enclave_type=string
      resource_group_name=string
    }
  ))
}

variable "servicebus_config" {
    type = object({
        namespace_name       = string
        location             = string
        resource_group_name  = string
        sku                  = string
        queue_name           = string
    })
}

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

variable "storage_config" {
    type = object({
        storage_account_name = string
        container_name       = string
        resource_group_name  = string
        location             = string
    })

}

variable "app_insights_config" {
    type = object({
        app_insights_name    = string
        resource_group_name  = string
        location             = string
        application_type     = string
    })

}
