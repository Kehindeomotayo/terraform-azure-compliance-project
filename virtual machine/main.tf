resource "azurerm_network_security_group" "vm_nsg" {
  name                = "${var.resource_prefix}-vm-nsg"
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = var.common_tags

  security_rule {
    name                       = "SSH"
    priority                   = 1001
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_subnet_network_security_group_association" "vm_subnet_nsg" {
  subnet_id                 = var.subnet_id
  network_security_group_id = azurerm_network_security_group.vm_nsg.id
}

resource "azurerm_public_ip" "vm_dev_ip" {
  name                = "${var.resource_prefix}-vm-dev-ip"
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = "Static"
  sku                 = "Standard"
  tags                = merge(var.common_tags, {
    Environment = "Development"
    Purpose     = "VM Development Access"
  })
}

resource "azurerm_network_interface" "vm_dev_nic" {
  name                = "${var.resource_prefix}-vm-dev-nic"
  location            = var.location
  resource_group_name = var.resource_group_name

  tags = merge(var.common_tags, {
    Environment = "Development"
  })

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.vm_dev_ip.id
  }
}

data "azurerm_ssh_public_key" "azure_keys" {
  name                = "azure-keys"
  resource_group_name = var.resource_group_name
}

resource "azurerm_linux_virtual_machine" "development_vm" {
  name                = "${var.resource_prefix}-development-vm"
  location            = var.location
  resource_group_name = var.resource_group_name
  size                = "Standard_B2s"
  admin_username      = "azureuser"

  tags = merge(var.common_tags, {
    Environment = "Development"
    Owner       = "Development Team"
    Department  = "IT"
    Project     = "VM-Governance-Demo"
    CostCenter  = "IT-DEV-001"
  })

  disable_password_authentication = true

  network_interface_ids = [
    azurerm_network_interface.vm_dev_nic.id,
  ]

  admin_ssh_key {
    username   = "azureuser"
    public_key = data.azurerm_ssh_public_key.azure_keys.public_key
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Premium_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts-gen2"
    version   = "latest"
  }
}
