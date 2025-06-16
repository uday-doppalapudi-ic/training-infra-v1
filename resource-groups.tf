# app.terraform.io/<Organization>/<module-name>/<provider>
module "resoruce-group" {
  source          = "app.terraform.io/FP-Training/resoruce-group/azurerm"
  version         = "0.0.1"
  resource_groups = local.resource_groups
  tags            = local.tags
}
