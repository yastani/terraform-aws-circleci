resource "aws_iam_user" "circleci" {
  name = "circleci"
}

resource "aws_iam_user_policy_attachment" "circleci-admin" {
  depends_on = ["aws_iam_user.circleci"]

  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user = "${aws_iam_user.circleci.name}"
}
