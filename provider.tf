terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.45.0"
    }
  }
}

provider "aws" {
  #region = "ap-northeast-2"
  #access_key = var.access_key
  #secret_key = var.secret_key
}
