provider "aws" {
  region  = "${var.region}"
}

module "ec2_prov" {
   source = "../../module/vm"
   ami_id = var.ami_id
   region = var.region
   instance_type = var.instance_type
   subnet_id = module.prod_vpc.subnet_id
   vpc_security_group_ids = module.prod_vpc.vpc_security_group_id
   key_name = var.key_name
}

module "prod_vpc" {
  source = "../../module/vpc"
}