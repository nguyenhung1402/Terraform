variable "ami" {
  description = "ID của AMI"
  type        = string
  default     = "ami-0866a3c8686eaeeba"
  nullable = false
}

variable "allowed_ip" {
  description = "IP được phép truy cập"
  type        = string 
  default = "0.0.0.0/0"
  nullable = false
}

variable "instance_type" {
  description = "Loại instance"
  type        = string 
  default = "t2.micro"
  nullable = false
}

variable "key_name" {
  description = "Tên của key pair"
  type        = string 
  default = "AWS"
  nullable = false
}

variable "cidr_block" {
  description = "CIDR block cho VPC"
  type        = string 
  default = "10.0.0.0/16"
  nullable = false
}

variable "public_cidr_block" {
  description = "CIDR block cho Public Subnet"
  type        = string 
  default = "10.0.1.0/24"
  nullable = false
}

variable "private_cidr_block" {
  description = "CIDR block cho Private Subnet"
  type        = string 
  default = "10.0.2.0/24"
  nullable = false
}

variable "availability_zone" {
  description = "Availability Zone"
  type        = string 
  default = "us-east-1a"
  nullable = false
}