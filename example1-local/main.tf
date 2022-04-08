resource "null_resource" "operation1"{
provisioner "local-exec"{
command = "echo 'Hello all from operation1'>file1.txt"
}
}


