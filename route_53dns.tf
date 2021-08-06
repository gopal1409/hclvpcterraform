#DNS registration
resource "aws_route53_record" "apps_dns" {
    zone_id = data.aws_route53_zone.mydomain.zone_id
    name = "app.devopsincloud.com"
    type = "A"
    alias {
        name = module.alb.this_lb_dns_name
        zone_id = module.alb.this_lb_zone_id
    }
}