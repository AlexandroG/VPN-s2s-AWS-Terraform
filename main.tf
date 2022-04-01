# Terraform setting
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Provider configuration
provider "aws" {
  region = "eu-west-1"
  shared_credentials_file = "/insert/your/path"
  profile                 = "default"
}

