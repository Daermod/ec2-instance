resource "aws_security_group" "allow_http" {
  name = "allow_http"
  description = "Allows HTTP traffic"
  vpc_id = var.vpc_id

  tags = {
    Name = "allow_http"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_http_ipv4_all" {
  security_group_id = aws_security_group.allow_http.id
  cidr_ipv4 = "0.0.0.0/0"
  from_port = 80
  ip_protocol = "tcp"
  to_port = 80
}


resource "aws_vpc_security_group_egress_rule" "allow_http_traffic" {
  security_group_id = aws_security_group.allow_http.id
  cidr_ipv4 = "0.0.0.0/0"
  ip_protocol = "-1"
}

resource "aws_security_group" "allow_ssh" {
  name = "allow_ssh"
  description = "Allows SSH traffic"
  vpc_id = var.vpc_id

  tags = {
    Name = "allow_ssh"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_ssh_ipv4_all" {
  security_group_id = aws_security_group.allow_ssh.id
  cidr_ipv4 = "0.0.0.0/0"
  from_port = 22
  ip_protocol = "tcp"
  to_port = 22
}

resource "aws_vpc_security_group_egress_rule" "allow_ssh_traffic" {
  security_group_id = aws_security_group.allow_ssh.id
  cidr_ipv4 = "0.0.0.0/0"
  ip_protocol = "-1"
}