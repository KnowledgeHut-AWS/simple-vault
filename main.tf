provider "aws" {
  profile = "kh-labs"
  region  = "me-south-1"
}

module "vault" {
  name            = var.name
  env             = "vault"
  source          = "./vault"
  key_name        = var.key_name
  public_key_path = var.public_key_path
}

