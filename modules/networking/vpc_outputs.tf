output "vpc_id" {
  description = "VPC ID to be used when creating resources"
  value = aws_vpc.dev_vpc.id
}

output "vpc_cidr_block" {
  description = "CIDR Block to be used when creating resources"
  value = aws_vpc.dev_vpc.cidr_block
}

output "vpc_subnet" {
  description = "Subnet to be used for EC2 Instance"
  value = aws_vpc.dev_vpc.subnet_id
}