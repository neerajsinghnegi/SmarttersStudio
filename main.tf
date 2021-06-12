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
