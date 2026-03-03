resource "azurerm_postgresql_flexible_server" "postgres" {
  name                   = "bootcamp-postgres-${random_string.suffix.result}"
  resource_group_name    = var.resource_group_name
  location               = var.location
  version                = "14"

  administrator_login    = "pgadmin"
  administrator_password = "Bootcamp1234!"

  sku_name   = "B_Standard_B1ms"
  storage_mb = 32768

  zone = "1"

  public_network_access_enabled = true
}