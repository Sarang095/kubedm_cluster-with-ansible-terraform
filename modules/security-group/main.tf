resource "aws_security_group" "kubedm_sg" {
  name = var.security_group_name

  egress = [
    {
      from_port        = 0
      to_port          = 0
      protocol         = -1  
      cidr_blocks      = ["0.0.0.0/0"]  
      ipv6_cidr_blocks = []  
      prefix_list_ids  = []
      security_groups  = []
      self             = true  
      description      = "Allow all outbound traffic"
    }
  ]

  ingress = [
    {
      from_port        = 0
      to_port          = 0
      protocol         = -1  
      cidr_blocks      = ["0.0.0.0/0"]  
      ipv6_cidr_blocks = ["::/0"]       
      prefix_list_ids  = []
      security_groups  = []
      self             = true  
      description      = "Allow all inbound traffic from anywhere (IPv4 & IPv6)"
    }
  ]
}

