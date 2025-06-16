
module "storage-account" {
  source           = "app.terraform.io/FP-Training/storage-account/azurerm"
  version          = "0.0.1"
  storage_accounts = local.storage_accounts
  tags             = local.tags
}
