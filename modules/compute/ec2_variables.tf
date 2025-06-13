variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "key_pair_name" {
  type = string
  default = "ec2-key-home"
}

variable "subnet_id" {
  type = string
}

variable "sg_allow_http" {
  type = string
}

variable "sg_allow_ssh" {
  type = string
}