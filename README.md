![324418709-87dc04e4-2bc4-4448-b176-2a776869015e](https://github.com/user-attachments/assets/fc053313-a1a5-481d-9ec5-b4b754baca2d)
# IaC and GitOps Pipeline for Kubernetes Cluster Deployment on Amazon EC2   

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

## Project Snapshots
![Screenshot from 2024-12-01 18-18-50](https://github.com/user-attachments/assets/d290897b-09aa-47b3-8cc9-1c4c382b0004)
![Screenshot from 2024-12-01 00-08-42](https://github.com/user-attachments/assets/00528b6c-bde2-4d25-b601-8c7d30518599)
![Screenshot from 2024-12-01 12-10-12(1)](https://github.com/user-attachments/assets/04f14130-0b42-4840-94aa-95211ff9515b)
![Screenshot from 2024-12-01 16-16-19](https://github.com/user-attachments/assets/4079b186-dee3-48e2-8ad4-a7bb11f8eb58)
![Screenshot from 2024-12-01 16-16-03](https://github.com/user-attachments/assets/758931ab-bd8c-4569-a8c7-87a740003b99)

