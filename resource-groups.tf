# app.terraform.io/<Organization>/<module-name>/<provider>
resource "azurerm_resource_group" "resoruce-group" {
  for_each = local.resource_groups
  name     = each.value.name
  location = "UK South"
  tags     = local.tags
}
