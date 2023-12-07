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

locals {
  users = ["varun"] //set of string
}

resource "aws_iam_user" "user" {
  count = length(local.users)
  name  = element(local.users, count.index)
}
