
module "vpc" {
 source = "./vpc"
  providers = {
    aws = aws.second_role
  }
}


resource "aws_vpc" "change" {
provider = aws.second_role
  cidr_block       = "10.15.0.0/16"
  instance_tenancy = "default"

  enable_dns_hostnames = true # route 53 dns하려면 필요 

  tags = {
    Name =  "scvit-vpc-ch2"
  }
}


