variable "arg_name" {
    type        = string
    default     = null
    description = "(Required) Resource Group Name"
}
variable "arg_location" {
    type        = string
    default     = "eastus"
    description = "(Required) Location where the resources will be created"
}
variable "asp_name" {
    type        = string
    default     = null
    description = "(Required) Specifies the name of the App Service. Changing this forces a new resource to be created."
}
variable "sku_tier" {
    type        = string
    default     = 
    description =
}
variable "sku_size" {
    type        = string
    default     =
    description =
}
variable "aps_name" {
    type        = string
    default     =
    description =
}
variable "site_config" {
    type        = string
    default     =
    description =
}
variable "scm_type" {
    type        = string
    default     =
    description =
}
variable "connection_string_name" {
    type        = string
    default     =
    description =
}
variable "connection_string_type" {
    type        = string
    default     =
    description =
}
variable "connection_string_value" {
    type        = string
    default     =
    description =
}


