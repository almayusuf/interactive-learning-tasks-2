resource "aws_route53_record" "jenkins" {
  zone_id = "Z05859503VOVDG70P4C98"
  name    = "jenkins.kayahuseyin64.net"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.web.public_ip]
}