# ebs volume creation //

resource "aws_ebs_volume" "xfusion" {
    availability_zone = "us-east-1"
    size              = 2
    type       = "gp3"

    tags = {
    Name = "xfusion-volume"
}
}

output "volume" {   
  value = aws_ebs_volume.xfusion.id
}
