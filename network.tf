# Deploy VNET
resource "azurerm_virtual_network" "VNET" {
  name                = "vnet-n1it-capacitacao"
  resource_group_name = var.namerg
  location            = var.location
  address_space       = ["10.40.0.0/20"]
  tags                = var.tags
}

# Deploy subnet
resource "azurerm_subnet" "SNET" {
  name                 = "snet-n1it-capacitacao"
  resource_group_name  = var.namerg
  virtual_network_name = azurerm_virtual_network.VNET.name
  address_prefixes     = ["10.40.0.0/24"]
}
 