# Deploy network interface vmdc01
resource "azurerm_network_interface" "nic" {
  name                = "nic-vmsrv-n1it-capacitacao"
  resource_group_name = var.namerg
  location            = var.location
  ip_configuration {
    name                          = "nic-config"
    subnet_id                     = azurerm_subnet.SNET.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.PIP.id
  }

  tags = var.tags
}