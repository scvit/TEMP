terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.75.0"
    }
  }
}
##

provider "aws" {
  region = "ap-northeast-2"

assume_role {
    role_arn     = "arn:aws:iam::637423635224:role/mw-assume-role"
}
#  access_key = var.access_key
#  secret_key = var.secret_key
}
