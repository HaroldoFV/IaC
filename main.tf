terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "sa-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0424a16d0e63b113b"
  instance_type = "t2.micro"
  key_name = "iac-alura"

  tags = {
    Name = "Primeira instancia"
  }
}
