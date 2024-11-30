variable "ami" {
    type = string
    description = "Ubuntu OS ami id"
}

variable "security_group" {
    type = string
    description = "allowing all traffic from each other"
}

variable "worker_node_1" {
    type = map(string)
    default = {
      "Name" = "worker-node-1"
      "Project" = "kubedm cluster setup using ansible and terraform"
    }
}

variable "worker_node_2" {
    type = map(string)
    default = {
      "Name" = "worker-node-2"
      "Project" = "kubedm cluster setup using ansible and terraform"
    }
}

variable "master_node" {
    type = map(string)
    default = {
      "Name" = "master_node"
      "Project" = "kubedm cluster setup using ansible and terraform"
    }
}


variable "instance_type" {
    type = string
}

variable "ec2_tags" {
  description = "tags for identifing ansible host"
  type = map(string)
  default = {
    Terraform = "true"
    name = "Ansible Host"
    Owner = "Sarang!!"
    Environment = "dev"
  }
}

variable "key_name" {
    type = string
}

variable "ansible_config_path" {
    type = string
    default = "."
}

