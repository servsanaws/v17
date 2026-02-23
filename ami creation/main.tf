# Provision EC2 instance
resource "aws_instance" "ec2" {
  ami           = "ami-0c101f26f147fa7fd"
  instance_type = "t2.micro"
  vpc_security_group_ids = [
    "sg-305e6b06846e79880"
  ]

  tags = {
    Name = "datacenter-ec2"
  }
}

# Create an AMI from the EC2 instance //

resource "aws_ami_from_instance" "datacenter-ec2-ami" {

  name               = "datacenter-ec2-ami"
  source_instance_id = aws_instance.ec2.id
  description        = "An AMI created from an existing EC2 instance for datacenter use"
}

# Output the AMI ID
output "datacenter_ami_id" {
    value = aws_ami_from_instance.datacenter-ec2-ami.id
}