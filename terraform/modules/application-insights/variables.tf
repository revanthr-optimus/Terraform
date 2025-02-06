variable "app_insights_config" {

    type = object({
        app_insights_name    = string
        resource_group_name  = string
        location             = string
        application_type     = string
    })

}
