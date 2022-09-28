# Terraform Module `cloudwatch-event` for AWS

This is a Terraform module for deploying an AWS EventBridge rule and target (optional)

## About This Module

The module creates :
- 1 aws_cloudwatch_event_rule
- 0 or 1 aws_cloudwatch_event_target

## How to Use This Module

Basic Example :

```hcl
module "eventbridge" {
  source              = "akirosit/cloudwatch-event/aws"
  name                = "basic-rule"
  schedule_expression = "cron(00 00 * * ? *)"
  description         = "Basic Rule"
}
```

Exemple with an SNS topic as target and event_pattern :

```hcl
resource "aws_sns_topic" "notifications" {
  name = "notifications"
}

module "eventbridge" {
  source        = "akirosit/cloudwatch-event/aws"
  name          = "asg-notifications"
  description   = "ASG Notifications"
  create_target = true
  target_arn    = aws_sns_topic.notifications.arn
  event_pattern = <<-PATTERN
  {
    "source": [
      "aws.autoscaling"
    ],
    "detail-type": [
      "EC2 Instance Launch Successful",
      "EC2 Instance Terminate Successful",
      "EC2 Instance Launch Unsuccessful",
      "EC2 Instance Terminate Unsuccessful"
    ]
  }
  PATTERN
}

```
