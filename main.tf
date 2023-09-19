provider "aws" {
  region = "us-west-2"
}

resource "aws_vpc" "Andre" {
  cidr_block = "10.0.0.0/16"

  tags = {
    name = "AndreVpc"
  }
}

