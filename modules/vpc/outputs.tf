output "vpc_id" {
  description = "ID của VPC"
  value       = aws_vpc.main.id
}


output "igw_id" {
  description = "ID của VPC"
  value       = aws_internet_gateway.igw.id
}

