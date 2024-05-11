resource "azurerm_subnet" "this_vm_subnet" {
  name                 = "${local.owner}-${local.environment}-${var.subnet}-vm"
  resource_group_name  = azurerm_resource_group.this_rg.name
  virtual_network_name = azurerm_virtual_network.this_vnet.name
  address_prefixes     = ["10.0.5.0/24"]
}

resource "azurerm_network_security_group" "this_rg_nsg" {
  name                = "${local.owner}-${local.environment}-${var.vm_nsg_name}"
  location            = azurerm_resource_group.this_rg.location
  resource_group_name = azurerm_resource_group.this_rg.name
}

resource "azurerm_network_security_rule" "this_rg_nsrule_vm" {
  name                        = var.vm_network_security_rule_name
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "3389"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.this_rg.name
  network_security_group_name = azurerm_network_security_group.this_rg_nsg.name
}

resource "azurerm_subnet_network_security_group_association" "this_network_security_group_vm_association" {
  subnet_id                 = azurerm_subnet.this_vm_subnet.id
  network_security_group_id = azurerm_network_security_group.this_rg_nsg.id
}