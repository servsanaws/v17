# provider setup   //
provider "aws" {
 region = "us-east-1"
}

# Create a VPC //
resource "aws_vpc" "devops-vpc" {
ipv6_cidr_block = "2600:1f18:429:6800::/56"
enable_dns_hostnames = true 
enable_dns_support = true
    tags = {
name = "devops-vpc"
}
}   