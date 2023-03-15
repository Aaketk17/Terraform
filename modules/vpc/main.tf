resource "aws_vpc" "terraform_vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = "Terraform VPC"
  }
}

resource "aws_subnet" "terraform_subnet" {
  vpc_id     = aws_vpc.terraform_vpc.id
  cidr_block = var.subnet_cidr
  map_public_ip_on_launch = true
  tags = {
    Name = "Terraform Subnet"
  }
}
