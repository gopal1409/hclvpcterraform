#acm module to create and verify the SSL certificate
module "acm"{
    source  = "terraform-aws-modules/acm/aws"
    version = "2.14.0"    
}
