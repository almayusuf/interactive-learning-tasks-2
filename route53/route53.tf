resource "aws_route53_record" "www" {
  zone_id = "Z09485621JN7TS90NI9SM"
  name    = "blog.www.kayahuseyin.net"
  records = ["127.0.0.1"]
}