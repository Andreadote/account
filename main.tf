provider "aws" {
  region = "us-west-2"
}

resource "aws_vpc" "Andre" {
  cidr_block = "10.0.0.0/16"

  tags = {
    name = "AndreVpcs"
  }
}
resource "aws_subnet" "AndreSubnet" {
  vpc_id                  = aws_vpc.Andre.id
  cidr_block              = "10.0.0.0/24"  # Adjust the CIDR block for your subnet
  availability_zone       = "us-west-2a"  # Adjust the availability zone as needed

  tags = {
    name = "AndreSubnet1"
  }
}
