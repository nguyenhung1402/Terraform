variable "vpc_id" {
  description = "ID của VPC"
  type        = string
}

variable "allowed_ip" {
  description = "IP được phép SSH vào Public instance"
  type        = string
}

variable "public_security_group_id" {
  description = "ID của Public Security Group"
  type        = string
}
