#Recovery Service Vout
resource "azurerm_recovery_services_vault" "asrvault" {
  name                = "asr-n1it-capacitacao"
  resource_group_name = var.namerg
  location            = var.location
  sku                 = "Standard"

  soft_delete_enabled = true
}