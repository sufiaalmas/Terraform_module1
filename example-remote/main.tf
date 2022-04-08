resource "aws_instance" "myinstance" {
        ami = "ami-0c6ebbd55ab05f070"
        instance_type = "t2.micro"
        key_name = "sufiaTF"
        tags = {
                Name = "SufiaTFInstance"
                }
        connection {
                type = "ssh"
                host = self.public_ip
                user = "ubuntu"
                private_key = file("sufiaTF.pem")            ### path of the keyfile 
                timeout = "9m"   #  Default timeout is 5 minutes
                }

        provisioner "remote-exec" {
                inline = ["touch /home/ubuntu/AccentureTFtraining.txt"]

        }
}

