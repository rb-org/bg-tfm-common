# bg-tfm-common

|Branch|Build Status|
|---|:---:|
|master |[![CircleCI](https://circleci.com/gh/rb-org/bg-tfm-common/tree/master.svg?style=svg&circle-token=3d0e9e12d6c4d122d34bb78743acbec7c4ddeef6)](https://circleci.com/gh/rb-org/bg-tfm-common/tree/master)

Terraform workspace = xxx

Mostly singleton resources used in other terraform plans

Needs to be created before any other plan. Backend.tf should be rem'd out until S3 bucket for remote state has been created.

Project Repos:

| Purpose | Repo |
|---|---|
| Common Resources | https://github.com/rb-org/bg-tfm-common |
| Base networking | https://github.com/rb-org/bg-tfm-prd-base |
| EC2 Instances | https://github.com/rb-org/bg-tfm-prd-ec2 |
| AMI Build pipeline | https://github.com/rb-org/bg-tfm-ami-pipeline |