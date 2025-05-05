# Terraform Backend Setup

This project contains a reusable Terraform module to provision:

- An **S3 bucket** with versioning for storing Terraform state
- A **DynamoDB table** for locking Terraform state
- A sample usage configuration to demonstrate the module

## 📦 Module Directory

```bash
modules/tf-backend/# terraform-backend-setup
