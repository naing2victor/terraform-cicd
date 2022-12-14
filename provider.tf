terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.25"
    }
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
