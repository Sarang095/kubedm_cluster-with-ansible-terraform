output "master_node_public_ip" {
  value = aws_instance.master_node.public_ip
}

output "worker_node_1_public_ip" {
  value = aws_instance.worker_node-1.public_ip
}

output "worker_node_2_public_ip" {
  value = aws_instance.worker_node-2.public_ip
}
