resource "aws_route_table" "terraform-route" {
    vpc_id = aws_vpc.terraform-vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.terraform-igw.id
    }

    tags = {
        Name =  "terraform-route"
    }
}