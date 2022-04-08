variable "myvar"{
type = string
default = "This is Accenture team for training"
}

resource "null_resource" "operation1"{
provisioner "local-exec"{
command = "echo ${var.myvar}>file1.txt"
}
}
