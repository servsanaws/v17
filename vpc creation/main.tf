# provider block    

terraform {
  required_providers {
    aws = {

        source = "hashicorp/aws"
        version = "~> 5.0"
    }
  }
}

provider "aws" {
    region = "us-east-1"
}

# Create a VPC with CIDR block //

resource "aws_vpc" "nautilus-vpc" {
    cidr_block = "192.168.0.0/24"   
    tags = {
        Name = "nautilus-vpc"
    }
}