resource "aws_iam_instance_profile" "ssm_instance_profile" {
  name = "ssm-instance-profile"
  role = "SSM_ROLE"  //using the existing role SSM-ROLE
}

resource "aws_instance" "master_node" {
  ami                   = var.ami
  vpc_security_group_ids = [var.security_group]
  key_name              = aws_key_pair.k8s_key.key_name
  instance_type         = "t2.medium"
  iam_instance_profile  = aws_iam_instance_profile.ssm_instance_profile.name
  tags = var.master_node
}

resource "aws_instance" "worker_node-1" {
  ami                   = var.ami
  vpc_security_group_ids = [var.security_group]
  key_name              = aws_key_pair.k8s_key.key_name
  instance_type         = var.instance_type
  iam_instance_profile  = aws_iam_instance_profile.ssm_instance_profile.name
  tags = var.worker_node_1
}

resource "aws_instance" "worker_node-2" {
  ami                   = var.ami
  vpc_security_group_ids = [var.security_group]
  key_name              = aws_key_pair.k8s_key.key_name
  instance_type         = var.instance_type
  iam_instance_profile  = aws_iam_instance_profile.ssm_instance_profile.name
  tags = var.worker_node_2
}
