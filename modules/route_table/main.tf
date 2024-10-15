resource "aws_route_table" "vpc_route_table_public" {
  vpc_id   = var.vpc_id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.igw_ip
  }
  tags = {
    Name        = "public-route-table",
  }
}


resource "aws_route_table_association" "vpc_route_association_public_subnet" {
  subnet_id      = var.public_subnet_id
  route_table_id = aws_route_table.vpc_route_table_public.id
}


resource "aws_route_table" "private_route_table" {
  vpc_id = var.vpc_id  

  route {
    # Tạo đường dẫn đến NAT Gateway cho traffic outbound
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = var.nat_gateway_id
  }

  tags = {
    Name = "private-route-table"
  }
}



resource "aws_route_table_association" "private_route_association" {
  subnet_id      = var.private_subnet_id  
  route_table_id = aws_route_table.private_route_table.id
}