resource "aws_route53_record" "www" {
  zone_id = "Z05859503VOVDG70P4C98"
  name    = "wordpress.kayahuseyin.net"
  type    = "A"
  ttl     = "300"
  records = ["aws_instance.web.public_ip"]
}





