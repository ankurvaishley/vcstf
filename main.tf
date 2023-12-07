///terraform workspace
terraform {
  required_version = "~> 1.6.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  cloud {
    organization = "ankur1991"

    workspaces {
      name = "vcstf"
    }
    
  }

}

provider "aws" {
  region = "ap-south-1"
}



resource "aws_vpc" "main" {
  cidr_block = "192.168.10.0/24"
}

