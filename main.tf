
module "vpc" {
  source = "./modules/vpc"
  cidr_block = var.cidr_block
}

module "subnet" {
  source             = "./modules/subnet"
  vpc_id             = module.vpc.vpc_id
  public_cidr_block  = var.public_cidr_block
  private_cidr_block = var.private_cidr_block
  availability_zone  = var.availability_zone
}

module "nat_gateway" {
  source         = "./modules/nat_gateway"
  public_subnet_id = module.subnet.public_subnet_id
}

module "security_group" {
  source                  = "./modules/security_group"
  vpc_id                  = module.vpc.vpc_id
  allowed_ip              = var.allowed_ip
  public_security_group_id = module.security_group.public_security_group_id
}

module "ec2" {
  source                = "./modules/ec2"
  ami                   = var.ami
  instance_type         = var.instance_type
  public_subnet_id      = module.subnet.public_subnet_id
  private_subnet_id     = module.subnet.private_subnet_id
  public_security_group = module.security_group.public_security_group_id
  private_security_group = module.security_group.private_security_group_id
  key_name              = var.key_name
}

module "route_table" {
  source = "./modules/route_table"
  vpc_id = module.vpc.vpc_id
  public_subnet_id = module.subnet.public_subnet_id
  private_subnet_id = module.subnet.private_subnet_id
  nat_gateway_id = module.nat_gateway.nat_gateway_id
  igw_ip = module.vpc.igw_id
}