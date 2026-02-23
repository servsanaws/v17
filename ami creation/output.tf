aws_instance.ec2: Refreshing state... [id=i-f4e97bb7fbdf47a62]

Terraform used the selected providers to generate the following execution plan. Resource
actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_ami_from_instance.datacenter-ec2-ami will be created
  + resource "aws_ami_from_instance" "datacenter-ec2-ami" {
      + architecture         = (known after apply)
      + arn                  = (known after apply)
      + boot_mode            = (known after apply)
      + description          = "An AMI created from an existing EC2 instance for datacenter use"
      + ena_support          = (known after apply)
      + hypervisor           = (known after apply)
      + id                   = (known after apply)
      + image_location       = (known after apply)
      + image_owner_alias    = (known after apply)
      + image_type           = (known after apply)
      + imds_support         = (known after apply)
      + kernel_id            = (known after apply)
      + manage_ebs_snapshots = (known after apply)
      + name                 = "datacenter-ec2-ami"
      + owner_id             = (known after apply)
      + platform             = (known after apply)
      + platform_details     = (known after apply)
      + public               = (known after apply)
      + ramdisk_id           = (known after apply)
      + root_device_name     = (known after apply)
      + root_snapshot_id     = (known after apply)
      + source_instance_id   = "i-f4e97bb7fbdf47a62"
      + sriov_net_support    = (known after apply)
      + tags_all             = (known after apply)
      + tpm_support          = (known after apply)
      + uefi_data            = (known after apply)
      + usage_operation      = (known after apply)
      + virtualization_type  = (known after apply)

      + ebs_block_device (known after apply)

      + ephemeral_block_device (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.