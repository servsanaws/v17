Terraform will perform the following actions:

  # aws_ebs_volume.xfusion_volume will be created
  + resource "aws_ebs_volume" "xfusion_volume" {
      + arn               = (known after apply)
      + availability_zone = "us-east-1"
      + encrypted         = (known after apply)
      + final_snapshot    = false
      + id                = (known after apply)
      + iops              = (known after apply)
      + kms_key_id        = (known after apply)
      + size              = 2
      + snapshot_id       = (known after apply)
      + tags              = {
          + "Name" = "xfusion-volume"
        }
      + tags_all          = {
          + "Name" = "xfusion-volume"
        }
      + throughput        = (known after apply)
      + type              = "gp3"
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_ebs_volume.xfusion_volume: Creating...
aws_ebs_volume.xfusion_volume: Still creating... [10s elapsed]
aws_ebs_volume.xfusion_volume: Creation complete after 12s [id=vol-7be14a502111b8b79]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed. 