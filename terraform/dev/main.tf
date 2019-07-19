provider "aws" {
  region  = "${var.aws_region}"
  profile = "profile"
  
  version = "~> 2.7"
}

module "vpc" {
  source = "../modules/vpc"

  vpc_net_block = "${var.vpc_net_block}"
  environment   = "${var.environment}"
}

provider "null" {
  version = "~> 2.1"
}

data "aws_availability_zones" "available" {}
