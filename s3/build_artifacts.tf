resource "aws_s3_bucket" "build_artifacts" {
  bucket = "${var.name_prefix}-build-artifacts"
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = "${merge(var.default_tags, 
    map("Environment", format("%s", var.environment)), 
    map("Workspace", format("%s", terraform.workspace)),
    map("Name", format("%s-build-artifacts", var.name_prefix))
    )
  }"
}
