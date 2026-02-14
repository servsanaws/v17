# create security group //

resource "aws_security_group" "nautilus-sg" {

  name        = "nautilus-sg"
  description = "Security group for Nautilus App Servers"

}

# create inbound rule for http //

resource "aws_vpc_security_group_ingress_rule" "http" {

  security_group_id = aws_security_group.nautilus-sg.id

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 80
  to_port     = 80
  ip_protocol = "tcp"
  description = "Allow HTTP from VPC CIDR"


}

# create inbound rule for ssh //

resource "aws_vpc_security_group_ingress_rule" "ssh" {

  security_group_id = aws_security_group.nautilus-sg.id

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 22
  to_port     = 22
  ip_protocol = "tcp"
  description = "Allow ssh from VPC CIDR"
}

# create outbound rule allow all //
resource "aws_vpc_security_group_egress_rule" "outbound" {

  security_group_id = aws_security_group.nautilus-sg.id


  cidr_ipv4   = "0.0.0.0/0"
  ip_protocol = "-1" # semantically equivalent to all ports
}




