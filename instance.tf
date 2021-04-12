resource "aws_key_pair" "default" {
   key_name   = "deployer-key"
   public_key = var.public_key
}

resource "aws_instance" "terraform-instance" {
  ami           = "ami-0de9f803fcac87f46"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.terraform-subnet.id
  security_groups = [aws_security_group.terraform-allow-port.id]
  key_name = aws_key_pair.default.key_name
  tags = {
    Name = "HelloWorld"
  }
}