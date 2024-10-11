variable "ami" {
  description = "ID của AMI"
  type        = string
  default     = "ami-01811d4912b4ccb26"
}

variable "instance_type" {
  description = "Loại EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "public_subnet_id" {
  description = "ID của Public Subnet"
  type        = string
}

variable "private_subnet_id" {
  description = "ID của Private Subnet"
  type        = string
}

variable "public_security_group" {
  description = "ID của Security Group cho Public instance"
  type        = string
}

variable "private_security_group" {
  description = "ID của Security Group cho Private instance"
  type        = string
}

variable "key_name" {
  description = "Tên Key Pair"
  type        = string
}
