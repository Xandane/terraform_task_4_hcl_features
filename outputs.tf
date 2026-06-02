

output "vm_name_uppercase" {
  value = upper(azurerm_virtual_machine.main.name)
}


output "tags_joined" {
  value = join(", ", [for tag in azurerm_virtual_machine.main.tags : tag])
}


output "vm_ids" {
   value = azurerm_virtual_machine.main.id
}