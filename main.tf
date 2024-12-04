terraform {
  required_version = ">= 1.5.7"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.75.1"
    }
  }

  backend "s3" {
    bucket = "vanderson-curso-terraform"
    key    = "aws-vm/terraform.tfstate"
    region = "sa-east-1"
  }
}

provider "aws" {
  region     = local.default.region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key

  default_tags {
    tags = {
      owner      = local.common_tags.owner
      managed-by = local.common_tags.managed-by
    }
  }
}

data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "vanderson-curso-terraform"
    key    = "aws-vpc/terraform.tfstate"
    region = "sa-east-1"
  }
}