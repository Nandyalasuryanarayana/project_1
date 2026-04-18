# store the terraform state file in s3
terraform {
  backend "s3" {
    bucket  = "terraform-remote-states-178"
    key     = "project_1/alb/jenkins.tfstate"
    region  = "ap-south-1"
    profile = "devops"
  }
}
