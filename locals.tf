locals {
  uname = "${var.environment}-${var.project}"

  resource_groups = {
    0 = {
      name = "${local.uname}-rg"
    }
    1 = {
      name = "${local.uname}-rg-2"
    }
    2 = {
      name = "${local.uname}-rg-3"
    }
  }

  tags = {
    environment = var.environment
    project     = var.project
    owner       = "FP-Training"
  }

  storage_accounts = {
    0 = {
      name                     = replace("${local.uname}-sa", "-", "")
      resource_group_name      = "${local.uname}-rg"
      account_tier             = "Standard"
      account_replication_type = "GRS"

      # identity = {
      #   type = "SystemAssigned"
      # }

      network_rules = {
        default_action = "Allow"
        bypass         = ["AzureServices"]
        ip_rules       = ["100.0.0.1"]
      }
    }
  }
}
