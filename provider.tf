terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.25"
    }
  }
  backend "s3" {
    bucket = "nnh-tf-state"
    key    = "tf-backend/terraform.tfstate"
    region = "us-east-1"
  }
  cloud {
    organization = "example-org-d07a05"

    workspaces {
      name = "gh-actions"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
