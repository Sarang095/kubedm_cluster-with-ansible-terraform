# IaC and GitOps Pipeline for Kubernetes Cluster Deployment on Amazon EC2  
**April 2024**  

## Overview

This project automates the provisioning and configuration of **Kubernetes clusters** using **Kubeadm** on **Amazon EC2**. It integrates **Terraform** for infrastructure provisioning, **Ansible** for configuration management, and **GitHub Actions** for CI/CD workflows, delivering a robust GitOps pipeline for secure and scalable deployments.

## Key Features

- **Infrastructure Provisioning**:  
  Utilizes **Terraform** to provision scalable infrastructure on **Amazon EC2**.

- **Configuration Management**:  
  Uses **Ansible** for automated configuration, ensuring a consistent environment across the cluster.

- **CI/CD Integration**:  
  The pipeline is integrated with **GitHub Actions** for seamless continuous deployment. **GitHub OIDC Provider** is used for **keyless AWS authentication**, enhancing security by eliminating the need for long-lived credentials.

- **Security**:  
  - Implements the **Principle of Least Privilege** to restrict access permissions and protect sensitive operations.
  - Secures sensitive data, such as cluster credentials, by utilizing **encrypted storage** and robust **key management systems** for data confidentiality and integrity.

- **Remote State Management**:  
  Uses **AWS S3** for remote **Terraform state management**, ensuring state consistency and collaboration across teams.

- **Modular Architecture**:  
  - Terraform configurations are modularized with reusable modules and parameterized via `.tfvars` files, enabling customizable deployments.
  - Leverages **Terraform Ansible Providers** to dynamically generate and maintain inventory files, ensuring synchronization between infrastructure and configuration layers.

## Benefits

- **Scalable Deployments**: Rapid, repeatable Kubernetes cluster deployments with minimal manual intervention.  
- **Security First**: Emphasis on secure, keyless authentication, and secure storage of sensitive data.
- **Modular and Customizable**: The pipeline is designed to be flexible, supporting different configurations through parameterized `.tfvars` files.
- **Efficient Collaboration**: Remote state management allows seamless collaboration in teams working with Terraform.
