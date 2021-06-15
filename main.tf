terraform {
       backend "remote" {         
       organization = "neerajsinghnegi"
       workspaces {
       name = "Github-Action"
       }
     }
  }

resource "null_resource" "example" {
     triggers = {
       value = "A example resource that does nothing!"
       }
    }
resource "aws_instance" "app_server" {
  ami           = "ami-0ad704c126371a549"
  instance_type = "t2.micro"

  tags = {
    Name = "Demo-01"
  }
}
