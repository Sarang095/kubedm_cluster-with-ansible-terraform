##This is the kubedm cluster setup with one master and two worker nodes

This project containes
1- Terraform for spining up servers.
2- ansible.provider plugin for dynamic creation of inventoy and required parameters
3- Ansible for configuration managment of worker and master nodes
4- Github Actions to run Terraform modules and access AWS Secrets via Keyless Authentication to AWS via OIDC running over OAuth2.0
5- Modularized the project using the 3 moudules for reusability and maintainability and abstraction.
