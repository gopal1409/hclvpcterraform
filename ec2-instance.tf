#terraform aws load balancer
module "ec2_private"{
    depends_on = [
      module.vpc #very important else userdata 
    ]
    source = "terraform-aws-modules/ec2/aws"
    version = "2.17.0"
    #insert 10 varaible
    name = "${var.environment}-vm"
    ami = data.aws_ami.amznlinux2.id 
    instance_type = var.instance_type
    #monitoring = true
    vpc_security_group_ids = [module.private_sg.this_security_group_id]
    subnet_ids = [
        module.vpc.private_subnets[0],
        module.vpc.private_subnets[1].
    ]
    instance_count = var.private_instance_count
    user_data = file("${path.module}/app1-install.sh")
}