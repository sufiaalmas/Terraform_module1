resource "aws_vpc" "sufia-vpc"{
cidr_block = "2.2.0.0/16"
instance_tenancy="default"
tags = {
Name = "sufia-vpc"
}
}

resource "aws_internet_gateway" "sufia-gateway" {
vpc_id = "${aws_vpc.sufia-vpc.id}"
tags = {
Name="sufia-gateway"
}
}

resource "aws_route" "sufia-route" {
        destination_cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.sufia-gateway.id}"
        route_table_id = "${aws_vpc.sufia-vpc.main_route_table_id}"
	}



