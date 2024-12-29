resource "azurerm_resource_group" "ResourceGroup" {
  name     = "TerraformResourceGroup"
  location = local.location
  tags = local.tags
}
