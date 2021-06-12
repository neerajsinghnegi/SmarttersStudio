terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  aws-access-key-id = ${{secrets.AWS_ACCESS_KEY_ID}}
  aws-secret-access-key = ${{secrets.AWS_SECRET_ACCESS_KEY}}
  region  = "ap-south-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0ad704c126371a549"
  instance_type = "t2.micro"

  tags = {
    Name = "Demo"
  }
}

