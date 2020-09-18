data "azurerm_storage_account" "asa" {
  name                  = var.asa_name
  resource_group_name   = var.asa_resource_group_name
  location              = var.asa_location
}
