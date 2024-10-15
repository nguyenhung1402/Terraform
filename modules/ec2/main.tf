resource "aws_instance" "public_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.public_subnet_id
  security_groups = [var.public_security_group]
  key_name      = var.key_name
  tags = {
    Name = "public_instance"
  }
}

resource "aws_instance" "private_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.private_subnet_id
  security_groups = [var.private_security_group]
  key_name      = var.key_name
  tags = {
    Name = "private_instance"
  }
}
