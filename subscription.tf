resource "aws_sns_topic_subscription" "this" {
  topic_arn = local.topic_arn
  protocol  = "https"
  endpoint  = replace(var.url, "/{{\\s*NULLSTONE_ENV\\s*}}/", local.env_name)
}
