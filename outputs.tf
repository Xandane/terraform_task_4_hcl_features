

output "vm_name_uppercase" {
  value = upper(azurerm_virtual_machine.main.name)
}


output "tags_joined" {
  value = join(", ", [for k, v in azurerm_virtual_machine.main.tags : "${k}=${v}"])
}


output "vm_ids" {
  value = [for vm in azurerm_virtual_machine.main : vm.id]
}