variable "servicebus_config" {
    type = object({
        namespace_name       = string
        location             = string
        resource_group_name  = string
        sku                  = string
        queue_name           = string
    })
}
