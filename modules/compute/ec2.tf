data "aws_ami" "ubuntu" {
  most_recent = true
  owners = ["amazon"]

  filter {
    name = "name"
    values = ["ubuntu-eks-pro/k8s_1.32/images/hvm-ssd-gp3/ubuntu-noble-24.04-arm64-server-20250607"]
  }
}

resource "aws_instance" "web_server" {
  ami = data.aws_ami.ubuntu
  instance_type = var.instance_type
  subnet_id = var.subnet_id
}