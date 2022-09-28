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

