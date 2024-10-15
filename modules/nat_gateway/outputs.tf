output "nat_gateway_id" {
  value = aws_nat_gateway.ngw.id
}

output "nat_gateway_eip" {
  value = aws_eip.nat_eip.public_ip
  
}