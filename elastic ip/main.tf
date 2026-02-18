# elastic IP creation //

provider "aws" {

region = "us-east-1"
}   


resource "aws_eip" "devops-eip" {
    domain = "vpc"

tags = {
    Name = "devops-eip"
  }
}