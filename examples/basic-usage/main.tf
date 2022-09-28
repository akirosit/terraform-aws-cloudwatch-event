module "eventbridge" {
  source              = "akirosit/cloudwatch-event/aws"
  name                = "basic-rule"
  schedule_expression = "cron(00 00 * * ? *)"
  description         = "Basic Rule"
}
