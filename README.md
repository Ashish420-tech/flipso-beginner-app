🚀 Flipso Beginner App – CI/CD with Azure DevOps
📌 Project Overview

This project demonstrates a real-world Continuous Integration (CI) pipeline using Azure DevOps Pipelines integrated with a GitHub repository.
The goal of this project is to automatically build an ASP.NET Core application whenever code is pushed to the repository.

This project was built as part of AZ-400 (Designing and Implementing Microsoft DevOps Solutions) learning.

🛠 Tech Stack

Language: C#

Framework: ASP.NET Core (.NET 8)

Source Control: GitHub

CI Tool: Azure DevOps Pipelines

Agent Type: Self-Hosted Windows Agent

🔄 CI Workflow (How It Works)

Developer pushes code to the main branch on GitHub

Azure DevOps Pipeline is automatically triggered

Pipeline runs on a self-hosted agent

Application is:

Restored (dotnet restore)

Built (dotnet build)

Pipeline completes successfully with a green status

✅ This confirms Continuous Integration is working correctly

📊 Pipeline Status

✔ GitHub → Azure DevOps integration: Working

✔ YAML-based pipeline: Configured

✔ Self-hosted agent: Online

✔ CI trigger on commit: Enabled

✔ Latest pipeline run: Successful

Azure DevOps Pipelines → Runs page shows a successful run (Fix agent selection).

📁 Repository Structure
flipso-beginner-app/
│
├── Program.cs
├── flipso-beginner-app.csproj
├── appsettings.json
├── Properties/
├── azure-pipelines.yml
└── README.md

🧪 How to Run Locally
dotnet restore
dotnet run


Then open in browser:

http://localhost:5241

📄 Azure Pipeline (CI YAML)
trigger:
- main

pool:
  name: Default

steps:
- task: UseDotNet@2
  inputs:
    packageType: 'sdk'
    version: '8.x'

- script: dotnet restore
  displayName: 'Restore packages'

- script: dotnet build --no-restore
  displayName: 'Build application'

🎯 Learning Outcomes

Hands-on experience with Azure DevOps Pipelines

Understanding of CI triggers and YAML pipelines

Setup and use of a self-hosted build agent

Real troubleshooting of pipeline and agent issues

Industry-style CI workflow

🚧 Next Enhancements

Add Continuous Deployment (CD) to Azure Web App

Add automated unit tests

Add pipeline stages (CI / CD separation)

Add monitoring and logging
✅ Continuous Integration is live and verified via Azure DevOps with successful pipeline runs triggered on commits to the `main` branch.
Latest CI run: Azure DevOps Pipelines → Runs → Successful execution on self-hosted agent

👤 Author

Ashish Mondal
DevOps Engineer (Learning Path – AZ-400)

# Flipso Beginner App – Azure DevOps CI/CD Project

This project demonstrates a **production-style CI/CD pipeline using Azure DevOps**, implemented end-to-end with best practices such as environment-based deployments, approvals, health checks, blue-green deployment, rollback strategy, secrets management, and cost control.

> ⚠️ Note: All Azure infrastructure and pipelines were **intentionally deleted after successful validation** to avoid ongoing cloud costs.  
> The entire setup is fully reproducible from code and YAML.

---

## 🧱 Architecture Overview

GitHub (main branch)
|
v
Azure DevOps CI Pipeline

Restore

Build

Publish Artifact
|
v
CD Pipeline
├── DEV Environment (Auto Deploy)
│ └── Health Check
└── PROD Environment (Manual Approval)
├── Blue-Green Deployment (Slot)
├── Health Validation
└── Slot Swap (Zero Downtime)


---

## 🚀 Features Implemented

- ✅ CI pipeline with build & artifact publishing
- ✅ CD pipeline with **DEV → PROD** environments
- ✅ Manual approval gate for PROD
- ✅ Health check endpoint (`/health`)
- ✅ Blue-Green deployment using App Service slots
- ✅ Automatic rollback on deployment failure
- ✅ Azure Key Vault integration for secrets
- ✅ Application Insights enabled for monitoring
- ✅ Cost-controlled teardown after validation

---

## 🧪 Application Health Endpoint

The application exposes a health endpoint used by the pipeline:



GET /health
Response: Healthy


This endpoint is used to **gate deployments** and trigger rollback if unhealthy.

---

## 📸 CI/CD Proof (Screenshots)

### Pipeline – Successful Run
![Pipeline Success](screenshots/pipeline-success.png)

---

### PROD Approval Gate
![Approval Gate](screenshots/prod-approval.png)

---

### Blue-Green Deployment Slots
![Deployment Slots](screenshots/deployment-slots.png)

---

### Application Health Check
![Health Check](screenshots/health-check.png)

---

## 📄 Pipeline as Code

The full CI/CD logic is defined in:



azure-pipelines.yml


This includes:
- Multi-stage pipeline
- Environment approvals
- Health validation
- Slot swap
- Rollback logic

---

## 💸 Cost Control & Cleanup

After successful testing:
- All Azure resources were deleted
- App Service Plan downgraded
- Deployment slots removed
- Resource groups cleaned

This ensures **zero ongoing billing** while keeping the project fully reproducible.

---

## 🧠 Interview Talking Point

> “I implemented a multi-stage Azure DevOps CI/CD pipeline with environment-based deployments, manual approvals, health checks, blue-green deployment, rollback strategy, secrets via Key Vault, and monitoring with Application Insights. After validation, I tore down the infrastructure to control costs.”

---

## 🔁 Recreate This Project

To recreate:
1. Provision Azure resources (App Service, Plan, Key Vault)
2. Restore `azure-pipelines.yml`
3. Connect Azure DevOps service connection
4. Run pipeline

---

## 📌 Tech Stack

- ASP.NET Core (.NET 8)
- Azure DevOps Pipelines
- Azure App Service
- Azure CLI
- Azure Key Vault
- Application Insights

---

## 👤 Author

**Ashish Mondal**  
DevOps | CI/CD | Cloud Automation  

GitHub: https://github.com/Ashish420-tech  
Azure DevOps: https://dev.azure.com/ashishmondallinkedin2025/
