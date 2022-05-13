terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.14.0"
    }
  }
}

provider "aws" {
  profile = "aaketk"
  region = "us-east-2"
}