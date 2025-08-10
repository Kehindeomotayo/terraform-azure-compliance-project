output "development_vm_id" {
  description = "ID of the development VM"
  value       = azurerm_linux_virtual_machine.development_vm.id
}

output "public_ip_address" {
  description = "Public IP address of the development VM"
  value       = azurerm_public_ip.vm_dev_ip.ip_address
}
