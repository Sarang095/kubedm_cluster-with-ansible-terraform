Kubernetes Cluster Setup with Kubeadm

This project sets up a Kubernetes cluster with one master and two worker nodes using a combination of Terraform, Ansible, and GitHub Actions. The infrastructure is modularized for better reusability, maintainability, and abstraction.
Project Overview

This project contains the following components:

- Terraform
  Used for spinning up the required server infrastructure on AWS.

- Ansible Provider Plugin
  Dynamically creates the inventory and necessary parameters for Ansible to configure the Kubernetes nodes.

- Ansible
  Manages the configuration of the master and worker nodes in the Kubernetes cluster.

- GitHub Actions
  Automates the running of Terraform modules.
  Accesses AWS Secrets using Keyless Authentication via OpenID Connect (OIDC) running over OAuth2.0.

- Modularization
  The project is modularized using three modules to ensure reusability, maintainability, and abstraction.
