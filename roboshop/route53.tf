resource "aws_route53_record" "www" {
  count = 10
  zone_id = var.zone_id
  # this is called as interpolation 
  name    = "${var.tags_list[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.example[count.index].private_ip]
}