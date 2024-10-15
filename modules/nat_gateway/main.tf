resource "aws_nat_gateway" "ngw" {
  subnet_id     = var.public_subnet_id
  allocation_id = aws_eip.nat_eip.id
  tags = {
    Name = "nat-gateway"
  }
}

resource "aws_eip" "nat_eip" {
  domain = "vpc"
}
