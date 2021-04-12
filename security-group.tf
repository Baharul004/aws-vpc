resource "aws_security_group" "terraform-allow-port" {
    name = "allow_port"
    description = "Allow all port"
    vpc_id = aws_vpc.terraform-vpc.id

    ingress  {
        description = "TCP from VPC"
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_port"
  }

}