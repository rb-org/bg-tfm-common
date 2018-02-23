resource "aws_route53_zone" "main" {
  name = "bgtest.io"

  tags = "${merge(var.default_tags, 
    map("Environment", format("%s", var.environment)), 
    map("Workspace", format("%s", terraform.workspace)),
    map("Name", format("%s-r53-bgtestio", var.name_prefix))
    )
  }"
}
