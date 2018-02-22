variable "region" {}

variable "name_prefix" {
  default = "bg"
}

variable "environment" {}

variable "default_tags" {
  description = "Map of tags to add to all resources"
  type        = "map"

  default = {
    Terraform          = "true"
    GitHubRepo         = "bg-tfm-common"
    GitHubOrganization = "rb-org"
  }
}
