output "PublicIP" {
  value = aws_eip.web_server_public_ip.public_ip
}