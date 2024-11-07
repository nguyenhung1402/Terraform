resource "aws_instance" "public_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.public_subnet_id
  security_groups = [var.public_security_group]
  key_name      = var.key_name
  ebs_optimized = true 
  monitoring = true

  metadata_options {
    http_tokens = "required"  # Yêu cầu sử dụng IMDSv2
    http_endpoint = "enabled"
  }
  root_block_device {
    encrypted = true
  }
  tags = {
    Name = "public_instance"
  }
}

resource "aws_instance" "private_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.private_subnet_id
  security_groups = [var.private_security_group]
  key_name      = var.key_name
  ebs_optimized = true 
  monitoring = true
  
  root_block_device {
    encrypted = true
  }
  metadata_options {
    http_tokens = "required"  # Yêu cầu sử dụng IMDSv2
    http_endpoint = "enabled"
  }
  tags = {
    Name = "private_instance"
  }
}
