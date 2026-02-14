
# create the private key //

resource "tls_private_key" "nautilus_kp" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# save to local path //

resource "local_file" "nautilus_kp" {
  content         = tls_private_key.nautilus_kp.private_key_pem
  filename        = "/home/bob/nautilus-kp.pem"
  file_permission = "0600"
}

