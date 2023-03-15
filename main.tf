module "provider" {
  source = "./modules/provider"
  aws_profile = "default"
  aws_region = "us-east-1"
}

module "vpc_module" {
  source = "./modules/vpc"
  vpc_cidr = "10.0.0.0/20"
  subnet_cidr = "10.0.1.0/24"
}

module "ec2_instance" {
  source = "./modules/ec2"
  instance_type = "t2.medium"
  ami_value = "ami-00eeedc4036573771"
  subnet_id = module.vpc_module.subnet_output.id
}