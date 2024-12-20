resource "ansible_host" "master" {
    depends_on = [ aws_instance.master_node ]
    groups = ["control_plane"]
    name = "master_node"
     variables = {
    ansible_host                 = aws_instance.master_node.public_ip
    ansible_user                 = "ubuntu"
    ansible_ssh_private_key_file = local_file.ssh_private_key.filename
    k8s_node_name                = "ip-${aws_instance.master_node.private_ip}"
    prefix                       = var.ec2_tags.Owner
  }
}

resource "ansible_host" "worker_node_1" {
    depends_on = [ var.worker_node_1, var.worker_node_2 ]
    groups = ["workers"]
    name = "worker_node_1"
     variables = {
    ansible_host                 = aws_instance.worker_node-1.public_ip
    ansible_user                 = "ubuntu"
    ansible_ssh_private_key_file = local_file.ssh_private_key.filename
    k8s_node_name                = "ip-${aws_instance.worker_node-1.private_ip}"
    prefix                       = var.ec2_tags.Owner
  }
}

resource "ansible_host" "worker_node_2" {
    depends_on = [ var.worker_node_1, var.worker_node_2 ]
    groups = ["workers"]
    name = "worker_node_2"
     variables = {
    ansible_host                 = aws_instance.worker_node-2.public_ip
    ansible_user                 = "ubuntu"
    ansible_ssh_private_key_file = local_file.ssh_private_key.filename
    k8s_node_name                = "ip-${aws_instance.worker_node-2.private_ip}"
    prefix                       = var.ec2_tags.Owner
  }
}

