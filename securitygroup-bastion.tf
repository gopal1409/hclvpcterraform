module "public_bastion_sg"{
    source = "terraform-aws-modules/security-group/aws"
    version = "3.18.0"
    name = "public-bastion-sg"
    vpc_id = module.vpc.vpc_id
    ingress_rules = ["ssh-tcp"]
    ingress_with_cidr_blocks = ["0.0.0.0"]
    egress_rules = ["all-all"]
}