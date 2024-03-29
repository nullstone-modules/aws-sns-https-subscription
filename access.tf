resource "aws_iam_role_policy_attachment" "confirm-access" {
  role       = var.app_metadata["role_name"]
  policy_arn = aws_iam_policy.confirm-access.arn
}
resource "aws_iam_policy" "confirm-access" {
  name   = local.resource_name
  tags   = local.tags
  policy = data.aws_iam_policy_document.confirm-access.json
}

data "aws_iam_policy_document" "confirm-access" {
  statement {
    effect    = "Allow"
    resources = [local.topic_arn]

    actions = [
      "sns:ConfirmSubscription",
    ]
  }
}