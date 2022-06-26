#Deploy Network Security Group
resource "azurerm_network_security_group" "NSG" {
  name                = "nsg-n1it-capacitacao"
  resource_group_name = var.namerg
  location            = var.location



  security_rule {

    name                       = "rdp_port"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "3389"
    source_address_prefix      = "187.19.159.54"
    destination_address_prefix = "*"
  }
  tags = var.tags
}