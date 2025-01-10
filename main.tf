##

resource "aws_vpc" "change" {
  cidr_block       = "10.15.0.0/16"
  instance_tenancy = "default"

  enable_dns_hostnames = true # route 53 dns하려면 필요 

  tags = {
    Name =  "scvit-vpc-test-113555"
  }
}


