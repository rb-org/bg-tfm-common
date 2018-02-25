output "remote_state_id" {
  value = "${aws_s3_bucket.remote_state.id}"
}

output "build_artifacts_id" {
  value = "${aws_s3_bucket.build_artifacts.id}"
}

output "cloudtrail_logs_id" {
  value = "${aws_s3_bucket.cloudtrail_logs.id}"
}

output "codebuild_artifacts_id" {
  value = "${aws_s3_bucket.codebuild_artifacts.id}"
}
