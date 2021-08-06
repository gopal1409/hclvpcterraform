#acm module to create and verify the SSL certificate
module "acm"{
    source  = "terraform-aws-modules/acm/aws"
    version = "2.14.0"

    name = "${var.environment}-alb"
    domain_name  = trimsuffix(data.aws_route53_zone.mydomain.name,".")
    zone_id = data.aws_route53_zone.mydomain.zone_id
  output "this_acm_certificate_arn" {
      value = "module.acm.this_acm_certificate_arn"
  }
}