# Deploy VMSERVER
resource "azurerm_windows_virtual_machine" "vmsrv" {
  name                  = "vmsrv"
  computer_name         = "vmsrv"
  resource_group_name   = azurerm_resource_group.RG.name
  location              = azurerm_resource_group.RG.location
  size                  = "Standard_D2s_v3"
  admin_username        = var.admin_username
  admin_password        = var.admin_password
  network_interface_ids = [azurerm_network_interface.nic.id]

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-Datacenter"
    version   = "latest"
  }
  os_disk {
    name                 = "osdisk-vmsrv-n1it-capacitacao"
    storage_account_type = "Standard_LRS"
    caching              = "ReadWrite"
  }

  tags = var.tags

}