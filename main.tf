provider "aws" {
  region                  = "${var.region}"
  shared_credentials_file = "~/.aws/credentials"
  profile                 = "rb-auto"
}

module "s3" {
  source = "./s3"

  name_prefix  = "${var.name_prefix}"
  region       = "${var.region}"
  default_tags = "${var.default_tags}"
  environment  = "${var.environment}"
}