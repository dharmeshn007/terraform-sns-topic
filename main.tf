resource "aws_sns_topic" "sns_top" {
  name = var.snstopic_name
}

resource "aws_sns_topic_subscription" "sns_sub" {
  topic_arn = aws_sns_topic.sns_top.arn
  protocol  = "email"
  endpoint  = "example@gmail.com"
}