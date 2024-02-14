data "ns_connection" "sns-topic" {
  name     = "sns-topic"
  contract = "datastore/aws/sns"
}

locals {
  topic_name  = data.ns_connection.sns-topic.outputs.topic_name
  topic_arn   = data.ns_connection.sns-topic.outputs.topic_arn
}
