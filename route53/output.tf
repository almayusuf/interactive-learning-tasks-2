output "zone_id" {
  description = " The zone ID number "
  value       = aws_route53_record.dev-ns.zone_id
}

output "name" {
  description = " Name "
  value       = aws_route53_record.dev-ns.name
}

output "records" {
  description = " Display records "
  value       = "aws_route53_record.dev-ns.records"
}