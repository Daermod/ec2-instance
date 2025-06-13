resource "aws_vpc" "dev_vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true

  tags = {
    Name = "Dev VPC"
  }
}

resource "aws_subnet" "public_subnet1" {
  vpc_id = aws_vpc.dev_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "Public Subnet 1"
  }
}

resource "aws_internet_gateway" "dev_igw" {
  vpc_id = aws_vpc.dev_vpc.id

  tags = {
    Name = "Dev IGW"
  }
}

resource "aws_route_table" "public_rtb" {
  vpc_id = aws_vpc.dev_vpc.id

  route  {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.dev_igw.id
  }

  tags = {
    Name = " Dev RTB"
  }
}

resource "aws_route_table_association" "public_rtb_association" {
  subnet_id = aws_subnet.public_subnet1.id
  route_table_id = aws_route_table.public_rtb.id
}