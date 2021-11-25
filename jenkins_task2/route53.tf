resource "aws_route53_record" "jenkins" {
  zone_id = "Z09485621JN7TS90NI9SM"
  name    = "jenkins.kayahuseyin64.net"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.web.public_ip]
}