# private key creation //

resource "tls_private_key" "devops-kp" {
    algorithm = "RSA"
    rsa_bits = 4096
}

# aws key pair creation //

resource "aws_key_pair" "devops-kp" {
    key_name = "devops-kp"
    public_key = tls_private_key.devops-kp.public_key_openssh
}

# save private key to local file //

resource "local_file" "devops-kp" {
    content = tls_private_key.devops-kp.private_key_pem
    filename = "${path.module}/devops-keykp.pem"
}

# ec2 creation //


resource "aws_instance" "devops-ec2" {

    ami = "ami-0c101f26f147fa7fd"
    instance_type = "t2.micro"
    key_name = aws_key_pair.devops-kp.key_name
    vpc_security_group_ids = []

    tags = {
        Name = "devops-ec2"
    }
}

