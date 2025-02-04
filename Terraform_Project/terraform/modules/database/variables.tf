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

