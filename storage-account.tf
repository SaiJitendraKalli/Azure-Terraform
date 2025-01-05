
resource "azurerm_storage_account" "StorageAccount" {

  name                     = "jitendraazurestorage"
  location                 = local.location
  resource_group_name      = azurerm_resource_group.ResourceGroup.name
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags = local.tags
}

