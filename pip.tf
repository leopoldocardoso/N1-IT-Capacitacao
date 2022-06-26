#deploy publico ip vmserver
resource "azurerm_public_ip" "PIP" {
  name                = "pip-vmsrv-n1it-capacitacao"
  resource_group_name = azurerm_resource_group.RG.name
  location            = azurerm_resource_group.RG.location

  allocation_method = "Dynamic"
  tags              = var.tags
}

