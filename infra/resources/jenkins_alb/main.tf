##############################################################################
# # main.tf file for Terraform module                                        #
# # This file contains the main configuration for the Terraform module       #
##############################################################################

# Configure aws provider
provider "aws" {
  region  = var.region
  profile = "devops" #The "devops" is an IAM user created to authenticate the terrafrom"
}
# Create application load balancer
module "jenkins_alb" {
  source              = "../../modules/alb"
  region              = var.region
  vpc_name            = var.vpc_name
  certificate_arn     = var.certificate_arn
  target_port         = var.target_port
  alb_sg_name         = var.alb_sg_name
  pub_subnet_az1_name = var.pub_subnet_az1_name
  pub_subnet_az2_name = var.pub_subnet_az2_name
  tg_name             = var.tg_name
  tg_protocol         = var.tg_protocol
  alb_name            = var.alb_name
  instance_name       = var.instance_name
}

