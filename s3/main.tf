# Remote State

resource "aws_s3_bucket" "remote_state" {
  bucket = "${var.name_prefix}-tfm-state"
  region = "${var.region}"
  acl    = "private"

  tags = "${merge(var.default_tags, map("Environment", format("%s", var.environment)), map("Workspace", format("%s", terraform.workspace)))}"

  versioning {
    enabled = true
  }
}
