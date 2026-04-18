##############################################################################
# # variables.tf file                                                        #
# # This file defines the input variables for the Terraform configuration    #
# # These variables will be used to create the infrastructure                #
##############################################################################

##############################################################################
# # Jenkins alb                                                              #
##############################################################################

variable "region" {}
variable "tg_name" {}
variable "tg_protocol" {}
variable "vpc_name" {}
variable "certificate_arn" {}
variable "target_port" {}
variable "alb_sg_name" {}
variable "pub_subnet_az1_name" {}
variable "pub_subnet_az2_name" {}
variable "alb_name" {}
variable "instance_name" {}

