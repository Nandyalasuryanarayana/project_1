# Using datasource to fetch the specific VPC with specific tags
data "aws_vpcs" "specific_vpc" {
  filter {
    name   = "tag:Name"
    values = [var.vpc_name]
  }
}
# create dedicated ALB security group
resource "aws_security_group" "alb_sg" {
  name        = var.alb_sg_name
  description = "Allow HTTP and HTTPS inbound traffic to ALB"
  vpc_id      = data.aws_vpcs.specific_vpc.ids[0]

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTPS"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.alb_sg_name
  }
}
#Fetch subnets
# Select public subnets in az1 with specific tags
data "aws_subnets" "public_subnets_az1" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpcs.specific_vpc.ids[0]]
  }

  # filter {
  #   name   = "availability-zone"
  #   values = ["${var.region}a"]
  # }

  tags = {
    Name = var.pub_subnet_az1_name
    # Environment = var.pub_subnet_az1_environment
    # Type        = "public"
  }
}

# Select public subnets in az2 with specific tags
data "aws_subnets" "public_subnets_az2" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpcs.specific_vpc.ids[0]]
  }

  # filter {
  #   name   = "availability-zone"
  #   values = ["${var.region}b"]
  # }

  tags = {
    Name = var.pub_subnet_az2_name
    # Environment = var.pub_subnet_az2_environment
    # Type        = "public"
  }
}
# Fetch the vm's with specific_tag
data "aws_instances" "tagged_instances" {
  filter {
    name   = "tag:Name"
    values = [var.instance_name]
  }
}
# create application load balancer
resource "aws_lb" "application_load_balancer" {
  name                       = var.alb_name
  internal                   = false
  load_balancer_type         = "application"
  security_groups            = [aws_security_group.alb_sg.id]
  subnets                    = [data.aws_subnets.public_subnets_az1.ids[0], data.aws_subnets.public_subnets_az2.ids[0]]
  enable_deletion_protection = false

  tags = {
    Name = var.alb_name
  }
}
# create target group
resource "aws_lb_target_group" "alb_target_group" {
  name        = var.tg_name
  target_type = "instance"
  port        = var.target_port
  protocol    = var.tg_protocol
  vpc_id      = data.aws_vpcs.specific_vpc.ids[0]

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    timeout             = 10
    matcher             = "200,403"
    healthy_threshold   = 2
    unhealthy_threshold = 3
  }

  lifecycle {
    create_before_destroy = true
  }
}
# Create the target group attachments
resource "aws_lb_target_group_attachment" "register_targets" {
  target_group_arn = aws_lb_target_group.alb_target_group.arn
  target_id        = data.aws_instances.tagged_instances.ids[0]
  port             = var.target_port
}

# create a listener on port 80 with redirect action
resource "aws_lb_listener" "alb_http_listener" {
  load_balancer_arn = aws_lb.application_load_balancer.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type = "redirect"

    redirect {
      port        = 443
      protocol    = "HTTPS"
      status_code = "HTTP_301"
    }
  }
}
# create a listener on port 443 with forward action
resource "aws_lb_listener" "alb_https_listener" {
  load_balancer_arn = aws_lb.application_load_balancer.arn
  port              = "443"
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  certificate_arn   = var.certificate_arn

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.alb_target_group.arn
  }
}
