variable "names" {
type = list 
default = ["pavan","sufia","user01"]
}

output "upper_names" {
value = [for names in var.names:upper(names)]
}
