resource "azurerm_resource_group" "ResourceGroup" {
  name     = "AppRG"
  location = local.location
  tags = local.tags
}