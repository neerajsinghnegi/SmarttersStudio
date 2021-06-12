terraform {
  backend "remote" {
    organization = "neerajsinghnegi"

    workspaces {
      name = "Github-Action"
    }
  }
}
