🚀 Flipso Beginner App – Azure DevOps CI/CD Project

This project demonstrates a real-world CI/CD implementation using Azure DevOps Pipelines integrated with a GitHub repository. It was built as part of AZ-400 (Designing and Implementing Microsoft DevOps Solutions) learning, with a strong focus on industry practices, troubleshooting, and cost control.

⚠️ Note: All Azure infrastructure and pipelines were intentionally deleted after successful validation to avoid ongoing cloud costs.
The entire setup is fully reproducible using the provided YAML and scripts.

📌 Project Overview

The goal of this project is to:

Implement Continuous Integration (CI) for an ASP.NET Core application

Extend it to Continuous Deployment (CD) with environment controls

Apply production-grade practices such as approvals, health checks, blue-green deployment, rollback, secrets, and monitoring

Tear down infrastructure responsibly after validation

🛠 Tech Stack

Language: C#

Framework: ASP.NET Core (.NET 8)

Source Control: GitHub

CI/CD Tool: Azure DevOps Pipelines

Agent Type: Self-Hosted Windows Agent

Cloud Platform: Azure App Service

Secrets: Azure Key Vault

Monitoring: Application Insights

🧱 Architecture Overview
GitHub (main branch)
        |
        v
Azure DevOps CI Pipeline
  - Restore
  - Build
  - Publish Artifact
        |
        v
CD Pipeline
  ├── DEV Environment (Auto Deploy)
  │     └── Health Check
  └── PROD Environment (Manual Approval)
        ├── Blue-Green Deployment (Slot)
        ├── Health Validation
        └── Slot Swap (Zero Downtime)

🔄 CI Workflow (How It Works)

Developer pushes code to the main branch on GitHub

Azure DevOps pipeline is automatically triggered

Pipeline runs on a self-hosted Windows agent

Application is:

Restored (dotnet restore)

Built (dotnet build)

Pipeline completes successfully with a green status

✅ This confirms Continuous Integration is working correctly

🚀 CD & Production Practices Implemented

✅ Multi-stage CI/CD pipeline (CI → DEV → PROD)

✅ Environment-based deployments using Azure DevOps Environments

✅ Manual approval gate before PROD

✅ Application health check endpoint (/health)

✅ Blue-Green deployment using App Service deployment slots

✅ Automatic rollback on deployment failure

✅ Secrets managed via Azure Key Vault

✅ Application Insights enabled for monitoring

✅ Cost-controlled teardown after validation

🧪 Application Health Endpoint

The application exposes a health endpoint used by the pipeline:

GET /health
Response: Healthy


This endpoint is used to:

Gate deployments

Validate slot health

Trigger rollback if unhealthy

📸 CI/CD Proof (Screenshots)

Screenshots were captured before teardown and are included as evidence.

Pipeline – Successful Run

PROD Approval Gate

Blue-Green Deployment Slots

Application Health Check

📄 Pipeline as Code

All CI/CD logic is defined in:

azure-pipelines.yml


Includes:

YAML-based CI

Artifact publishing

Environment approvals

Health validation

Slot swap

Rollback logic

📁 Repository Structure
flipso-beginner-app/
├── Program.cs
├── flipso-beginner-app.csproj
├── appsettings.json
├── Properties/
├── azure-pipelines.yml
├── screenshots/
└── README.md

🧪 Run Locally
dotnet restore
dotnet run


Open in browser:

http://localhost:5241

💸 Cost Control & Cleanup

After successful validation:

Azure Web Apps deleted

App Service Plan downgraded

Deployment slots removed

Resource groups cleaned

This ensures zero ongoing billing, while keeping the project fully reproducible.
