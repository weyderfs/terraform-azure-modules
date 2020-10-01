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
variable "asp_kind" {
    type    = string
    default = "Linux"
    description = " (Optional) The kind of the App Service Plan to create. Possible values are Windows (also available as App), Linux, elastic (for Premium Consumption) and FunctionApp (for a Consumption Plan). Defaults to Windows. Changing this forces a new resource to be created."
}
variable "sku_tier" {
    type        = string
    default     = "Standard"
    description = "(Required) A sku block as documented below."
}
variable "sku_size" {
    type        = string
    default     = "S1"
    description = "(Required) Specifies the plan's instance size."
}
variable "aps_name" {
    type        = string
    default     = null
    description = "(Required) Specifies the name of the App Service Slot component. Changing this forces a new resource to be created."
}
variable "site_config" {
    type        = any
    default     = []
    description = "(Optional) A site_config object as defined below."
}

variable "app_settings" {
    type        = any
    default     = []
    description = "(Optional) A key-value pair of App Settings."
}

variable "connection_string" {
    type        = any
    default     = []
    description = "(Optional) An connection_string block as defined below."


