module "ec2_public"{
    source = "terraform-aws-modules/ec2-instance/aws"
    version = "2.17.0"
    name = "${var.environment}-BastonHost"
    ami = data.aws_ami.amznlinux2.id
    instance_type = var.instance_type
    subnet_id = module.vpc.public_subnets[0]
    vpc_security_group_ids = [module.public_bastion_sg.this_security_group_id]
}