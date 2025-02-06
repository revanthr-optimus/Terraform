variable "storage_config" {
    type = object({
        storage_account_name = string
        container_name       = string
        resource_group_name  = string
        location             = string
    })

}

