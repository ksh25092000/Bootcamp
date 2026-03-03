# Bootcamp Terraform

This directory contains Terraform configuration to create a minimal Azure
environment for the bootcamp: a Resource Group, VNet, AKS cluster and a
PostgreSQL server.

Quick start

1. Install Terraform (>= 1.3), then set necessary variables either via
   environment variables or a `terraform.tfvars` file.

Example env variables (preferred for secrets):

```bash
export ARM_SUBSCRIPTION_ID="<your-subscription-id>"
export ARM_TENANT_ID="<your-tenant-id>"
export ARM_CLIENT_ID="<your-client-id>"        # optional if using az login
export ARM_CLIENT_SECRET="<your-client-secret>" # optional if using az login
export TF_VAR_ssh_public_key="$(cat ~/.ssh/id_rsa.pub)"
export TF_VAR_postgres_password="<strong-password>"
```

2. Initialize and apply:

```bash
cd terraform
terraform init
terraform plan -out plan.tfplan
terraform apply plan.tfplan
```

Notes
- The PostgreSQL firewall is configured permissively for demo purposes.
- Replace variables with secure values before production use.
