# Fundraiser DevOps Project

## Overview
A simple Flask web application automated with CI/CD, Docker, Terraform, Ansible, and AKS on Azure.

## Steps to Run
1. Clone the repo
2. Build docker image: `docker build -t fundraiser-app .`
3. Run locally: `docker run -p 5000:5000 fundraiser-app`
4. Push to ACR, then deploy with Ansible and Terraform.

## Replace Values
- `<your-acr-name>` → your Azure Container Registry name
- `<your-acr-username>` → ACR username
- Set `AZURE_ACR_PASSWORD` in GitHub Secrets
