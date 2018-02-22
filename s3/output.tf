output "remote_state_id" {
  value = "${aws_s3_bucket.remote_state.id}"
}

output "remote_state_arn" {
  value = "${aws_s3_bucket.remote_state.arn}"
}
