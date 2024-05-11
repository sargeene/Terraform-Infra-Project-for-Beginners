resource "azurerm_windows_virtual_machine" "this_rg_winvm" {
  name                = "${local.owner}-${local.environment}-${var.win_vm_name}"
  resource_group_name = azurerm_resource_group.this_rg.name
  location            = azurerm_resource_group.this_rg.location
  size                = "Standard_F2"
  admin_username      = var.win_vm_username
  admin_password      = var.win_vm_password
  network_interface_ids = [
    azurerm_network_interface.this_vm_nic.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}
 