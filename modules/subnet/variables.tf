variable "vpc_id" {
  description = "ID của VPC"
  type        = string
}

variable "public_cidr_block" {
  description = "CIDR block cho Public Subnet"
  type        = string
}

variable "private_cidr_block" {
  description = "CIDR block cho Private Subnet"
  type        = string
}

variable "availability_zone" {
  description = "Availability Zone"
  type        = string
  default     = "ap-southeast-1a"
}
