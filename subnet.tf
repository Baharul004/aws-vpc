resource "aws_subnet" "terraform-subnet" {
    vpc_id = aws_vpc.terraform-vpc.id
    cidr_block = "10.0.0.0/24"
    map_public_ip_on_launch = true
    tags = {
        Name = "terraform-subnet"
    }
}