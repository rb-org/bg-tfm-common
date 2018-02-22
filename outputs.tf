output "remote_state_id" {
  value = "${module.s3.remote_state_id}"
}

output "build_artifacts_id" {
  value = "${module.s3.build_artifacts_id}"
}

output "cloudtrail_logs_id" {
  value = "${module.s3.cloudtrail_logs_id}"
}
