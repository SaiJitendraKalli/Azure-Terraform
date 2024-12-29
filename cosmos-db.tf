# resource "azurerm_cosmosdb_account" "cosmosdb" {
#   name                = "saijitendra-cosmosdb"
#   location            = azurerm_resource_group.ResourceGroup.location
#   resource_group_name = azurerm_resource_group.ResourceGroup.name
#   offer_type          = "Standard"
#   kind                = "GlobalDocumentDB"
#   free_tier_enabled   = true
#
#   consistency_policy {
#     consistency_level       = "BoundedStaleness"
#     max_interval_in_seconds = 10
#     max_staleness_prefix    = 200
#   }
#   geo_location {
#     failover_priority = 0
#     location          = local.location
#   }
# }
#
# resource "azurerm_cosmosdb_sql_database" "database" {
#   name                = "database"
#   resource_group_name = azurerm_resource_group.ResourceGroup.name
#   account_name        = azurerm_cosmosdb_account.cosmosdb.name
# }
#
# resource "azurerm_cosmosdb_sql_container" "sample" {
#   name                = "sample"
#   database_name       = azurerm_cosmosdb_sql_database.database.name
#   account_name        = azurerm_cosmosdb_account.cosmosdb.name
#   partition_key_paths = ["/id"]
#   resource_group_name = azurerm_resource_group.ResourceGroup.name
# }