module "vpc" {
  source     = "./terraform-modules/vpc"
  cidr_block = var.vpc_cidr
  name       = "my-vpc"
}

module "subnets" {
  source                = "./terraform-modules/subnets"
  vpc_id                = module.vpc.vpc_id
  public_subnet_cidr    = var.public_subnet_cidr
  private_subnet_cidr   = var.private_subnet_cidr
  availability_zone     = var.availability_zone
  public_route_table_id = module.vpc.public_route_table_id
  name                  = "my-subnets"
}

module "security-groups" {
  source         = "./terraform-modules/security-groups"
  vpc_id         = module.vpc.vpc_id
  name           = "my-sg"
  allowed_cidrs  = [var.public_subnet_cidr]
}
module "instances" {
  source            = "./terraform-modules/instances"
  ami               = var.ami
  instance_type     = var.instance_type
  subnet_id         = module.subnets.public_subnet_id
  security_group_id = module.security-groups.public_sg_id
  key_name          = var.key_name 
  name              = "my-instance"
}

