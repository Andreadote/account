provider "aws" {
  region = "us-west-2"
}
resource "aws_vpc" "Andre" {
  cidr_block = "10.0.0.0/16"

  tags = {
    name = "AndreVpc"
  }
}
resource "aws_subnet" "AndreSubnet" {
  vpc_id                  = aws_vpc.Andre.id
  cidr_block              = "10.0.0.0/24"
  availability_zone       = "us-west-2a"

  tags = {
    name = "AndreSubnet1"
  }
}
