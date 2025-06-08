terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
    }
  }
}

provider "aws" {
  alias = "work"
  region = "us-east-1"
  profile =  "iamadmin_work"
}

provider "aws" {
  alias = "home"
  region = "us-east-1"
  profile = "iamadmin_home"
}