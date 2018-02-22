provider "aws" {
  region                  = "${var.region}"
}

module "s3" {
  source = "./s3"

  name_prefix  = "${var.name_prefix}"
  region       = "${var.region}"
  default_tags = "${var.default_tags}"
  environment  = "${var.environment}"
}

module "iam" {
  source = "./iam"

  name_prefix = "${var.name_prefix}"
}
