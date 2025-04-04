terraform {
  required_version = "~> 1.11.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "venki-devops-vvaha"
    region         = "us-east-1"
    key            = "venkatesh"
    dynamodb_table = "venki-devops-vvaha"
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws-region
}
