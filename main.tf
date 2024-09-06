resource "aws_vpc" "main" {
  cidr_block       = "10.14.0.0/16"
  instance_tenancy = "default"

  enable_dns_hostnames = true # route 53 dns하려면 필요 

  tags = {
    Name =  "scvit-vpc"
  }
}

