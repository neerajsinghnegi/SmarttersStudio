terraform {
  resource "aws_instance" "app_server" {
  ami           = "ami-0ad704c126371a549"
  instance_type = "t2.micro"

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    random = {
      source = "hashicorp/random"
    }
  }

  backend "remote" {         
       organization = "neerajsinghnegi"
       workspaces {
       name = "Github-Action"
       }
     }
  }
