# ebs volume creation //

resource "aws_ebs_volume" "nautilus-volume" {  
  
  availability_zone = "us-east-1a"
  size              = 2
  type              = "gp3"
}



