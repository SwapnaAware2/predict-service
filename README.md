Overview
This project demonstrates DevOps best practices for deploying a simple healthcare-style API using Docker, AWS ECS Fargate, GitHub Actions CI/CD, monitoring, and security controls.
The application exposes two endpoints:
GET /health – Health check endpoint
GET /predict – Returns a sample prediction score


This assignment focuses on:
Cloud automation
Containerization
CI/CD pipelines
Monitoring & alerting
Security best practices

🛠 Tech Stack
Backend: Node.js (Express)
Container: Docker
Cloud: AWS (EC2, IAM, ECR, ECS Fargate, CloudWatch)
CI/CD: GitHub Actions
Infrastructure as Code: Terraform
Monitoring: CloudWatch

⚙️ Installation & Deployment
Prerequisites
AWS Account
GitHub Account
Docker
Node.js
Terraform
AWS CLI

Setup Infrastructure
cd terraform
terraform init
terraform apply


Configure GitHub Secrets
Add the following secrets in GitHub:
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
AWS_REGION
ECR_URI

Deploy Application
git push origin main

GitHub Actions will automatically:
Build the application
Create Docker image
Push image to ECR
Deploy to ECS

🧪 Local Testing
npm install
node app/index.js

Docker test:
docker build -t predict-service .
docker run -p 3000:3000 predict-service

