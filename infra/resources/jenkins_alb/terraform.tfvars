#####################################################################################
# # This file contains input variable values for Terraform configuration.           #
# # Use this file to specify values for variables defined in your Terraform files.  #
#####################################################################################

#####################################################################################
# # Jenkins alb                                                                     #
#####################################################################################
vpc_name            = "project_1_vpc"
certificate_arn     = "arn:aws:acm:ap-south-1:035260059016:certificate/7e942892-deb1-4b80-ab84-bc4b9c0501d4"
target_port         = "8080"
region              = "ap-south-1"
alb_sg_name         = "jenkins_alb_sg"
pub_subnet_az1_name = "project_1_public_subnet_az1"
pub_subnet_az2_name = "project_1_public_subnet_az2"
tg_name             = "jenkins-tg"
tg_protocol         = "HTTP"
alb_name            = "jenkins-alb"
instance_name       = "jenkins_master_vm"

