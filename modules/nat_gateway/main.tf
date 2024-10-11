resource "aws_nat_gateway" "ngw" {
  subnet_id     = var.public_subnet_id
  allocation_id = aws_eip.ngw.id
}

resource "aws_eip" "ngw" {
  domain = "vpc"
}
