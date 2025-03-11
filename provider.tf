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
alias = "first_role"

assume_role {
  role_arn = "arn:aws:iam::070839874981:role/mw-test-role2"
}

}

provider "aws" {
region = "ap-northeast-2"
alias = "second_role"
  access_key = var.access_key
  secret_key = var.secret_key

#  assume_role {
#    role_arn     = "arn:aws:iam::637423635224:role/mw-assume-role"
#}

}

variable "access_key" {}
variable "secret_key" {}

