provider "aws" {
  region              = "${var.region}"
  allowed_account_ids = ["${var.acc_id}"]
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

/*
module "r53" {
  source = "./r53"

  name_prefix  = "${var.name_prefix}"
  default_tags = "${var.default_tags}"
  environment  = "${var.environment}"
}
*/

