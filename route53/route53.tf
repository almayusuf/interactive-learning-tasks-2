resource "aws_route53_zone" "main" {
  name = "kayahuseyin.net"
}
resource "aws_route53_zone" "dev" {
  name = "blog.kayahuseyin.net"
}
resource "aws_route53_record" "dev-ns" {
  zone_id = "Z05859503VOVDG70P4C98"
  name    = "blog.kayahuseyin.net"
  type    = "NS"
  ttl     = "30"
  records = ["127.0.0.1"]
}