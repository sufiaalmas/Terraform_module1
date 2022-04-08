resource "null_resource" "operation2"{
provisioner "local-exec"{
command = "echo 'Hello all from operation2' > file_${null_resource.operation2.id}"
}
}
