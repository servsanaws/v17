bob@iac-server ~/terraform via 💠 default ➜  terraform show
# aws_vpc.devops-vpc:
resource "aws_vpc" "devops-vpc" {
    arn                                  = "arn:aws:ec2:us-east-1:000000000000:vpc/vpc-fbb631c10bf87adca"
    assign_generated_ipv6_cidr_block     = true
    cidr_block                           = "10.0.0.0/16"
    default_network_acl_id               = "acl-79f7c580f3f30ae63"
    default_route_table_id               = "rtb-6e464678a175a3d12"
    default_security_group_id            = "sg-7988856be584348af"
    dhcp_options_id                      = "default"
    enable_dns_hostnames                 = true
    enable_dns_support                   = true
    enable_network_address_usage_metrics = false
    id                                   = "vpc-fbb631c10bf87adca"
    instance_tenancy                     = "default"
    ipv6_association_id                  = "vpc-cidr-assoc-8a9a17455ead64fb7"
    ipv6_cidr_block                      = "2400:6500:0adb:d400::/56"
    ipv6_cidr_block_network_border_group = null
    ipv6_ipam_pool_id                    = null
    ipv6_netmask_length                  = 0
    main_route_table_id                  = "rtb-6e464678a175a3d12"
    owner_id                             = "000000000000"
    tags                                 = {
        "name" = "devops-vpc"
    }
    tags_all                             = {
        "name" = "devops-vpc"
    }
}