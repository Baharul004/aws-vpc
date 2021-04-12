resource "aws_key_pair" "default" {
   key_name   = "deployer-key"
   #public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDFk6U+durMN6gJ1Hq6C+6Wu2jkGgXKRphQlWtiRDpOQlfUxP+HRApMjYVdR0ugwawCe21D6KYpqXhHY5ctc0V6C1ibixR1xWjLm6GvuVaMntrBIlpK7REXgEXbIYL6qREftYFpz+8jYc7NaM4mEN//0lE74szFbOZ4ZTtuXmpx+b7ECvIpyUYwMAsW/1uktkv5u3DFsJO7ky6j/VMz+rvpslp3ZiklzlaaU4LXKmKzIK8FVhXfvF9/RY0O92ZL5rdu5rrdSaGDbsPR8hdvR+UEVvQnyYrxy0sdVF1BP9a0GNkJyx5tsg0PCZ1ziEdLqZloGt7YJc+r7mcJqsloGWvMtCgj8hxSkCiGbCVsHgiamQfhEAYWZTdNAENU/hTMcx40m2J4LmoA7ytM8f7cqKbwGOjFbNB9LKlYeP59MC5d81jBPkTyEJM0zTGURooU65x+KpfIAl14WmuUx/zeQV9BUJa2D92IxSTvXrdP2eY6Bx6MI6hYsofFNjne4RvoNJM= alambaharul@dell2bnfwt2.replynet.prv"
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