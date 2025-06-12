variable "instance_type" {
  type = string
  default = "t2.micro"
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