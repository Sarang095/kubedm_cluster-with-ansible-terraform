terraform {
  backend "s3" {
    key    = "terraform/backend"
    bucket = "my-kops-state-bucket-ccc50"
    region = "us-east-1"
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    ansible = {
      source = "ansible/ansible"
      version = "~>1.3.0"
    }
    tls = {
      source = "hashicorp/tls"
    }
  }
}