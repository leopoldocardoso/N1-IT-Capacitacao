resource "azurerm_storage_account" "storage" {
  name                     = "stn1itcapcacitacao"
  resource_group_name      = var.namerg
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags                     = var.tags
}