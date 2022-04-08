resource "null_resource" "runScript"{
provisioner "local-exec"{
command = "sh myscript.sh"
working_dir = "/home/user02/"
}
}
