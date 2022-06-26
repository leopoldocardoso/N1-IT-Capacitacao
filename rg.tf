# Deploy RG
resource "azurerm_resource_group" "RG" {
  name     = "rg-n1it-capacitacao"
  location = "eastus"

  tags = var.tags
}