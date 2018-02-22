resource "aws_iam_user" "circleci" {
  name = "circleci"
}

resource "aws_iam_access_key" "access_key" {
  user = "${aws_iam_user.circleci.name}"
}

resource "aws_iam_user_policy" "user_policy" {
  name = "${var.name_prefix}-circleci-user-role"
  user = "${aws_iam_user.circleci.name}"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}
