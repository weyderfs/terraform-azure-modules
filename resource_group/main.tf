data "azurerm_resource_group" "arg" {
  name      = var.name
  location  = var.location
}