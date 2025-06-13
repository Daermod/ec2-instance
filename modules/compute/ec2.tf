data "aws_ami" "ubuntu" {
  most_recent = true
  owners = ["amazon"]

  filter {
    name = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-20250610"]
  }
}

resource "aws_instance" "web_server" {
  ami = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  vpc_security_group_ids = [
      var.sg_allow_http,
      var.sg_allow_ssh
  ]
  key_name = var.key_pair_name

  user_data = file("././userdata.sh")

  tags = {
    Name = "Web Server"
  }
}

resource "aws_eip" "web_server_public_ip" {
  instance = aws_instance.web_server.id
}