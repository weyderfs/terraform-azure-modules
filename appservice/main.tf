resource "azurerm_resource_group" "arg" {
  name     = var.arg_name
  location = var.arg_location
}

resource "azurerm_app_service_plan" "asp" {
  name                = var.asp_name
  location            = azurerm_resource_group.arg.location
  resource_group_name = azurerm_resource_group.arg.name

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

  site_config {
    dotnet_framework_version = var.site_config
    scm_type                 = var.scm_type
  }

  app_settings = {
    "SOME_KEY" = "null"
  }

  connection_string {
    name  = var.connection_string_name
    type  = var.connection_string_type
    value = var.connection_string_value
  }
}
