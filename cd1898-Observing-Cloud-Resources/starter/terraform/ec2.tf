#  module "project_ec2" {
#    source             = "./modules/ec2"
#    name               = local.name
#    account            = data.aws_caller_identity.current.account_id
#    aws_ami            = data.aws_ami.amazon_linux_2.id
#    private_subnet_ids = module.vpc.private_subnet_ids
#    vpc_id             = module.vpc.vpc_id
#  }

  module "project_ec2" {
   source             = "./modules/ec2"
   name               = local.name
   account            = data.aws_caller_identity.current.account_id
   aws_ami            = "ami-011ff72759dbe8aea"
   private_subnet_ids = module.vpc.private_subnet_ids
   public_subnet_ids = module.vpc.public_subnet_ids
   vpc_id             = module.vpc.vpc_id
 }
 #ami-0ad65c3656163df58
 #ami-0098badc8cae88c13
 #ami-0aa3ecde329747e61