
This project demonstrates DevOps best practices for deploying a simple healthcare-style API using Docker, AWS ECS Fargate, GitHub Actions CI/CD, monitoring, and security controls.
The application exposes two endpoints:
1) GET /health – Health check endpoint
2) GET /predict – Returns a sample prediction score


This assignment focuses on:
1) Cloud automation
2) Containerization
3) CI/CD pipelines
4) Monitoring & alerting
5) Security best practices

🛠 Tech Stack
1) Backend: Node.js (Express)
2) Container: Docker
3) Cloud: AWS (EC2, IAM, ECR, ECS Fargate, CloudWatch)
4) CI/CD: GitHub Actions
5) Infrastructure as Code: Terraform
6) Monitoring: CloudWatch

⚙️ Installation & Deployment
Prerequisites
1) AWS Account
2) GitHub Account
3) Docker
4) Node.js
5) Terraform
6) AWS CLI

Setup Infrastructure
cd terraform
terraform init
terraform apply


Configure GitHub Secrets
Add the following secrets in GitHub:
1) AWS_ACCESS_KEY_ID
2) AWS_SECRET_ACCESS_KEY
3) AWS_REGION
4) ECR_URI

Deploy Application
git push origin main

GitHub Actions will automatically:
1) Build the application
2) Create Docker image
3) Push image to ECR
4) Deploy to ECS

🧪 Local Testing
1) npm install
2) node app/index.js

Docker test:
1) docker build -t predict-service .
2) docker run -p 3000:3000 predict-service

