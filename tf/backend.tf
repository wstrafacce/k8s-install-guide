terraform {
  # Require version .12 or greater
  required_version = "~> 0.12"
  backend "local" {
    path = "terraform.tfstate"
  }
}