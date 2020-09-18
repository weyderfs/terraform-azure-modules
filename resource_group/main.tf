data "azurerm_resource_group" "arg" {
  name      = var.arg_name
  location  = var.arg_location
}