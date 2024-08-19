provider "aws" {
  region = var.aws_region
}

module "key-pair" {
  source   = "./modules/key-pair"
  key_name = var.key_name
}

module "security-group" {
  source              = "./modules/security-group"
  security_group_name = var.security_groupName
}

module "ec2-instances" {
  source         = "./modules/ec2-instances"
  security_group = module.security-group.security_group_name_id  //*we are using the output from the security group module(security_group_name_id)*
  key_pair       = module.key-pair.key_pair_id  //*we are using the output from the keypair module(<module>.<nameOfKP>.<OutputOfKP>)*
  ami            = var.ami_id  
  instance_type  = var.instance_type //rest of the time we just use module variables as variables here and define their values in .tfvars file

  //if we have defined the default values in module varibales then no neccessary to define the variable here
}