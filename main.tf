terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = " ~> 4.0 "
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0a734ede9890e57f5"
  instance_type = "t3.micro"
  tags = {
    Name = "tf-cloud-inst-auto-apply"
  }
}

