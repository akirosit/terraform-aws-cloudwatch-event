output "name" {
  description = "The name of the rule."
  value       = aws_cloudwatch_event_rule.main.name
}

output "name_prefix" {
  description = "The name_prefix of the rule"
  value       = aws_cloudwatch_event_rule.main.name_prefix
}

output "schedule_expression" {
  description = "The scheduling expression of the rule."
  value       = aws_cloudwatch_event_rule.main.schedule_expression
}

output "event_bus_name" {
  description = "The event bus associated with this rule."
  value       = aws_cloudwatch_event_rule.main.event_bus_name
}

output "event_pattern" {
  description = "The event pattern described a JSON object."
  value       = aws_cloudwatch_event_rule.main.event_pattern
}

output "description" {
  description = "The description of the rule."
  value       = aws_cloudwatch_event_rule.main.description
}

output "role_arn" {
  description = "The Amazon Resource Name (ARN) associated with the role that is used for target invocation."
  value       = aws_cloudwatch_event_rule.main.role_arn
}

output "is_enabled" {
  description = "Whether the rule should be enabled (defaults to true)."
  value       = aws_cloudwatch_event_rule.main.is_enabled
}

output "tags" {
  description = "A map of tags assigned to the resource."
  value       = aws_cloudwatch_event_rule.main.tags
}

output "id" {
  description = "The name of the rule."
  value       = aws_cloudwatch_event_rule.main.id
}

output "arn" {
  description = "The Amazon Resource Name (ARN) of the rule."
  value       = aws_cloudwatch_event_rule.main.arn
}

output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_cloudwatch_event_rule.main.tags_all
}
