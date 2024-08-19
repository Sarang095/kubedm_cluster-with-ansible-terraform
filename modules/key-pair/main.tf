terraform {
  required_providers {
    ansible = {
      source  = "ansible/ansible"
      version = ">= 1.3.0"
    }
  }
}

resource "tls_private_key" "algorithm_kp" {
    algorithm = "RSA"
    rsa_bits = "4096"
}

resource "aws_key_pair" "keubedm_kp" {
    key_name = var.key_name
    public_key = tls_private_key.algorithm_kp.public_key_openssh
}
