

output "vm_name_uppercase" {
  value = upper(azurerm_virtual_machine.main.name)
}


output "tags_joined" {
  value = join(", ", values(azurerm_virtual_machine.main.tags))

}


output "vm_ids" {
  value = [for vm in azurerm_virtual_machine.main : vm.id]
}