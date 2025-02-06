webapp_environment={
  "northeuropeplan1000010"={
        service_plan_os_type="Windows"
        service_plan_sku="S1"
        service_plan_location="North Europe"
        web_app_name="webapp80000090"
          resource_group_name="North Europe"
  }

}


api_management_environment={
  "apimanagement"={
        name="api56963"
        publisher_name="Revanth"
        publisher_email="vanteddu.reddy@optimusinfo.com"
        sku_name="Developer_1"
        location="North Europe"
        apiname="optimusapi"
        resource_group_name="IaCLearning-RG"
  }
}

api_environment={
  "api"={
        name="apimanagement656658"
        display_name="optimus-api-management"
        path="user-api" // for example purpose //
        protocols=["https"]
        content_format="swagger-link-json"
        content_value="https://petstore.swagger.io/v2/swagger.json"
        apimname="apimname"
          resource_group_name="IaCLearning-RG"
  }
}

server = [
    {
        name = "sqlserver236658"
        resource_group_name = "IaCLearning-RG"
        location = "North Europe"
        version = "12.0"
        administrator_login = "optimus2569658"
        administrator_login_password = "op2633@5625845"
    }

]

database = [
    {
        name = "ms-database52269"
        collation = "SQL_Latin1_General_CP1_CI_AS"
        license_type = "LicenseIncluded"
        max_size_gb = 2
        sku_name = "S0"
        enclave_type = "VBS"
        resource_group_name = "IaCLearning-RG"
    }
]

servicebus_config = {
    namespace_name      = "Servicebus2483"
    location            = "North Europe"
    resource_group_name = "IaCLearning-RG"
    sku                 = "Standard"
    queue_name          = "bus_queue"
}

function_app_config = {
    resource_group_name                = "IaCLearning-RG"
    location                           = "North Europe"
    app_service_plan_name              = "functionapp-service-plan"
    function_app_name                  = "function-app2251"
    storage_account_name               = "mystorageaccount"
    storage_account_access_key         = "my-storage-account-access-key"
    storage_account_blob_connection_string = "my-storage-account-blob-connection-string"
}

storage_config = {
    storage_account_name = "optimusstorageaccount"
    container_name       = "blobcontainer2256"
    resource_group_name  = "IaCLearning-RG"
    location             = "North Europe"
}

app_insights_config = {
    app_insights_name                = "appinsights12645"
    location            = "North Europe"
    resource_group_name = "IaCLearning-RG"
    application_type    = "web"
}