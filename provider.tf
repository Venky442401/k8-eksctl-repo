terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0" # AWS provider version, not terraform version
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "vsaws4201"
    key    = "testkey1"
    region = "us-east-1"
    dynamodb_table = "vsaws4201_table"
  }
}