resource "azurerm_mysql_flexible_server" "this_rg_flexibleserver" {
  name                   = "${local.owner}-${local.environment}-${var.flexible_server_name}"
  resource_group_name    = azurerm_resource_group.this_rg.name
  location               = azurerm_resource_group.this_rg.location
  administrator_login    = var.mysql_admin_login
  administrator_password = var.mysql_admin_pword
  sku_name               = "B_Standard_B1s"
  zone                   = 1
}

resource "azurerm_mysql_flexible_database" "this_rg_flexibledb" {
  name                = "${local.owner}-${local.environment}-${var.flexible_server_db}"
  resource_group_name = azurerm_resource_group.this_rg.name
  server_name         = azurerm_mysql_flexible_server.this_rg_flexibleserver.name
  charset             = "utf8"
  collation           = "utf8_unicode_ci"
}