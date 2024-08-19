variable "aws_region" {
  type        = string
  description = "AWS region"
}

variable "ami_id" {
  type        = string
  description = "ubuntu os ami id"
}

variable "key_name" {
  type        = string
  description = "key name"
}

variable "security_groupName" {
  type = string
}

variable "instance_type" {
  type = string
}