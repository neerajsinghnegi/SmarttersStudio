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
