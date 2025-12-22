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
