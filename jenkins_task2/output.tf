# output "Jenkins_Password” {
#     value = file("/var/lib/jenkins/secrets/initialAdminPassword”)
# }
output "Jenkins_URL" {
  value = aws_route53_record.jenkins.name
}
output "Jenkins_User" {
  value = "admin"
}
output "Jenkins_Passwd" {
  value = "password"
}