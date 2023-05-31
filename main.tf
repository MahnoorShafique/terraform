# Configure AWS provider
provider "aws" {
  region = var.aws_region
}

# Create VPC
resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
}

# Create security group for ECS
resource "aws_security_group" "ecs_security_group" {
  name        = "ecs-security-group"
  description = "Security group for ECS"

  vpc_id = aws_vpc.my_vpc.id

  # Allow inbound traffic from ALB
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow outbound traffic to RDS and Redis
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create ECS cluster
resource "aws_ecs_cluster" "my_cluster" {
  name = "my-cluster"
}

# Include other Terraform configuration files
module "ecs" {
  source = "./ecs"
}

module "rds" {
  source = "./rds"
}

module "redis" {
  source = "./redis"
}
