output "zone_id" {
 description = " The zone ID number "
 value = aws_route53_record.dev-ns.zone_id
 }
 output "name" {
 description = " name "
 value = aws_route53_zone.dev.name
 }
 output "records" {
 description = " display records "
 value = aws_route53_record.dev-ns.records
 }