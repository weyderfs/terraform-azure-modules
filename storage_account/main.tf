resource "azurerm_storage_account" "asa" {
  name                     = var.asa_name
  resource_group_name      = var.asa_resource_group_name
  location                 = var.asa_location
  account_tier             = var.asa_account_tier
  account_replication_type = var.asa_account_replication_type

}
