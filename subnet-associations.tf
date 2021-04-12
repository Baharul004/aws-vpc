resource "aws_route_table_association" "terraform-association" {
    subnet_id = aws_subnet.terraform-subnet.id
    route_table_id = aws_route_table.terraform-route.id
}