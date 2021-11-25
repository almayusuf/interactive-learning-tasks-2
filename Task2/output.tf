output "URL" {
    description = " Jenkins weblink "
    value = aws_route53_record.dev-ns.name
}
output "Jenkins_User" {
  value = "admin"
}
output "Jenkins_Passwd" {
  value = "password"
}



