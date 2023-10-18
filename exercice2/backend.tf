terraform {
  backend "s3" {
    bucket = "terraform-state"
    key = "terraform/backend"
    region = "eu-west-2"
  }
}