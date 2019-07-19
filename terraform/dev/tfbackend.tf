terraform {
  backend "s3" {
    bucket  = "terraform-formac12"
    key     = "dev.json"
    region  = "us-west-2"
    profile = "profile"
  }
}
