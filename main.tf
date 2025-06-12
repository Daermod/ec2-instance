module "vpc_network" {
  source = "./modules/networking"
}

module "security" {
  source = "./modules/sg"
  vpc_id = module.vpc_network.vpc_id
  vpc_cidr_block = module.vpc_network.vpc_cidr_block
}

module "compute" {
  source = "./modules/compute"
  subnet_id = module.vpc_network.vpc_subnet
  sg_allow_http = module.security.sg_allow_http
  sg_allow_ssh = module.security.sg_allow_ssh
}