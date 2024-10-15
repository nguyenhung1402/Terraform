variable "vpc_id" {
  description = "ID của VPC"
  type        = string
}

variable "igw_ip" {
  description = "IP của internet gateway"
  type        = string
}

variable "public_subnet_id" {
  description = "ID của Public Subnet"
  type        = string
}


variable "private_subnet_id" {
  description = "ID của Private Subnet"
  type        = string
}

variable "nat_gateway_id" {
  description = "ID của NAT Gateway"
  type        = string
  
}

