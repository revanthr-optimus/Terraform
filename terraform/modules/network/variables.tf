variable "resource_group_name" {
   type = string
  
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