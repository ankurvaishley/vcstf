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
      name = "clidriven"
    }
    
  }

}

provider "aws" {
  region = "ap-south-1"
}


