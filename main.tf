terraform {
       backend "remote" {         
       organization = "neerajsinghnegi"
       workspaces {
       name = "Github-Action"
       }
     }
  }

provider "aws" {
       aws_access_key_id = "${secrets.AWS_ACCESS_KEY_ID}"
       aws_secret_access_key = "${secrets.AWS_SECRETE_ACCESS_KEY}"
       region = "ap-south-1"
}

#resource "null_resource" "example" {
 #    triggers = {
   #    value = "A example resource that does nothing!"
    #   }
    #}
resource "aws_instance" "app_server" {
  ami           = "ami-0ad704c126371a549"
  instance_type = "t2.micro"

  tags = {
    Name = "Demo"
  }
}
