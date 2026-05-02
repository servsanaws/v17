# EBS Volume and Snapshot Creation 

resource "aws_ebs_volume" "k8s_volume" {
  availability_zone = "us-east-1a"
  size              = 5
  type              = "gp2"

  tags = {
    Name = "xfusion-vol"
  }
}



resource "aws_ebs_snapshot" "xfusion-vol-ss" {

  volume_id   = aws_ebs_volume.k8s_volume.id
  description = "Xfusion Snapshot"
  tags = {

    Name = "xfusion-vol-ss"
  }
}

output "snapshot_id" {
  description = "The ID of the created snapshot"
  value       = aws_ebs_snapshot.xfusion-vol-ss.id
}
