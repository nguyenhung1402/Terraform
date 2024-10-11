
module "vpc" {
  source = "./modules/vpc"
  cidr_block = "10.0.0.0/16"
}

module "subnet" {
  source             = "./modules/subnet"
  vpc_id             = module.vpc.vpc_id
  public_cidr_block  = "10.0.1.0/24"
  private_cidr_block = "10.0.2.0/24"
  availability_zone  = "ap-southeast-1a"
}

module "nat_gateway" {
  source         = "./modules/nat_gateway"
  public_subnet_id = module.subnet.public_subnet_id
}

module "security_group" {
  source                  = "./modules/security_group"
  vpc_id                  = module.vpc.vpc_id
  allowed_ip              = "0.0.0.0/0"
  public_security_group_id = module.security_group.public_security_group_id
}

module "ec2" {
  source                = "./modules/ec2"
  ami                   = "ami-01811d4912b4ccb26"
  instance_type         = "t2.micro"
  public_subnet_id      = module.subnet.public_subnet_id
  private_subnet_id     = module.subnet.private_subnet_id
  public_security_group = module.security_group.public_security_group_id
  private_security_group = module.security_group.private_security_group_id
  key_name              = "AWS"
}
