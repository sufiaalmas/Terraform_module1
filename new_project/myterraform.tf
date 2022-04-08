resource "null_resource" "operation1"{
provisioner "local-exec"{
command ="echo 'This is Terraform Training'>training.txt"
}
}
resource "null_resource" "operation2"{
provisioner "local-exec"{
command ="echo 'Pavan Wankhade is the trainer'>trainer.txt"
}
}

