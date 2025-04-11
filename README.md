# 🔄 AWS Auto Scaling Group with Terraform & Bitbucket Pipelines

This project provisions an **Auto Scaling Group (ASG)** on AWS using **Terraform**, with remote backend configuration and **Bitbucket Pipelines** for CI/CD automation.

---

## 📁 Project Structure

| File                     | Description |
|--------------------------|-------------|
| `auto-scaling.tf`        | Defines the Launch Template, Auto Scaling Group, and associated configurations. |
| `backend.tf`             | Configures the remote backend for storing Terraform state (e.g., S3 and DynamoDB). |
| `bitbucket-pipelines.yml`| Automates Terraform workflows (init, plan, apply) using Bitbucket Pipelines. |
| `main.tf`                | Entry point that includes all main resources and module calls. |
| `output.tf`              | Declares output variables such as ASG name or instance details. |
| `provider.tf`            | Specifies the AWS provider and region. |
| `variable.tf`            | Contains all input variables used throughout the infrastructure. |

---

## 🧱 Prerequisites

- [Terraform](https://www.terraform.io/downloads)
- AWS CLI with configured credentials
- Bitbucket repository with Pipelines enabled
- An S3 bucket & DynamoDB table (for storing Terraform state)

---

## ⚙️ Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/prayog22/AutoScaling.git
```
