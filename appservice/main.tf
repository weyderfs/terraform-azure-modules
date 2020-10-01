resource "azurerm_resource_group" "arg" {
  name     = var.arg_name
  location = var.arg_location
}

resource "azurerm_app_service_plan" "asp" {
  name                = var.asp_name
  location            = azurerm_resource_group.arg.location
  resource_group_name = azurerm_resource_group.arg.name
   kind               = var.asp_kind

  sku {
    tier = var.sku_tier
    size = var.sku_size
  }
}

resource "azurerm_app_service" "aps" {
  name                = var.aps_name
  location            = azurerm_resource_group.arg.location
  resource_group_name = azurerm_resource_group.arg.name
  app_service_plan_id = azurerm_app_service_plan.asp.id

  dynamic "site_config" {
    for_each  = var.site_config
    
  }

  dynamic "app_settings" {
    for_each  = var.app_settings

  }

  dynamic "connection_string" {
    for_each  = var.connection_string
  }
}
