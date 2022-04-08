resource "aws_vpc" "sufia-vpc"{
cidr_block = "2.2.0.0/16"
instance_tenancy="default"
tags = {
Name = "sufia-vpc"
}
}


