# End-to-End DevOps CI/CD Pipeline with Terraform, Jenkins, SonarQube, Nexus & Tomcat

## Project Overview

This project demonstrates the implementation of a complete DevOps CI/CD pipeline using industry-standard tools. Infrastructure is provisioned on AWS using Terraform, while Jenkins automates the build, testing, code quality analysis, artifact management, and application deployment process.

The pipeline performs the following:

- Provision AWS infrastructure using Terraform
- Install Jenkins automatically
- Build a Java Maven application
- Perform static code analysis using SonarQube
- Store build artifacts in Nexus Repository
- Deploy the application to Apache Tomcat
- Automate the complete software delivery lifecycle

---

# Architecture Diagram

```
                 Developer
                      |
                 GitHub Repository
                      |
               Jenkins Pipeline
                      |
      ---------------------------------
      |               |              |
      |               |              |
   Maven Build   SonarQube Scan   Terraform
      |               |              |
      |               |              |
      -------> Nexus Repository <----
                      |
                 Deploy Artifact
                      |
                Apache Tomcat
                      |
                 Running Web App
```

---

# Objectives

- Demonstrate Infrastructure as Code (IaC) using Terraform.
- Automate software delivery using Jenkins.
- Perform code quality checks using SonarQube.
- Store application artifacts in Nexus Repository.
- Deploy Java applications to Apache Tomcat.
- Showcase a complete CI/CD implementation.

---

# Technologies Used

| Technology | Purpose |
|------------|---------|
| AWS EC2 | Virtual Servers |
| Terraform | Infrastructure Provisioning |
| Jenkins | CI/CD Automation |
| Git & GitHub | Source Code Management |
| Maven | Java Build Tool |
| SonarQube | Code Quality Analysis |
| Nexus Repository | Artifact Repository |
| Apache Tomcat | Application Server |
| Bash | Installation Scripts |
| Java | Application Development |

---

# Repository Structure

```
Sonarq_Nexus-Repo/
│
├── SampleWebApp/
│   └── Java Web Application
│
├── Jenkinsfile
│
├── Main.tf
│
├── variables.tf
│
├── terraform.tfvars
│
├── install_jenkins.sh
│
├── install_SonarQube
│
├── install_Nexus
│
├── install_tomcat.sh
│
└── README.md
```

---

# Workflow

1. Developer pushes code to GitHub.
2. Jenkins detects the change.
3. Jenkins checks out the source code.
4. Maven compiles and packages the application.
5. SonarQube performs static code analysis.
6. Build artifacts are uploaded to Nexus Repository.
7. Terraform provisions AWS infrastructure (if required).
8. Jenkins deploys the application to Apache Tomcat.
9. Application becomes available to end users.

---

# Prerequisites

Before running this project, ensure the following are installed:

- AWS Account
- Terraform
- Git
- Java JDK
- Maven
- Jenkins
- SonarQube
- Nexus Repository
- Apache Tomcat
- AWS CLI
- SSH Key Pair

---

# Deployment Steps

### Step 1

Clone the repository.

```bash
git clone https://github.com/<your-username>/Sonarq_Nexus-Repo.git
```

### Step 2

Configure AWS credentials.

```bash
aws configure
```

### Step 3

Initialize Terraform.

```bash
terraform init
```

### Step 4

Validate configuration.

```bash
terraform validate
```

### Step 5

Review execution plan.

```bash
terraform plan
```

### Step 6

Provision infrastructure.

```bash
terraform apply
```

### Step 7

Access Jenkins using the EC2 Public IP.

```
http://<Jenkins-Public-IP>:8080
```

### Step 8

Create a Jenkins Pipeline using the repository's `Jenkinsfile`.

### Step 9

Run the pipeline.

The pipeline automatically:

- Builds the application
- Executes SonarQube analysis
- Publishes artifacts to Nexus
- Deploys to Tomcat

---

# Skills Demonstrated

- Infrastructure as Code (Terraform)
- Continuous Integration (Jenkins)
- Continuous Deployment
- AWS EC2 Provisioning
- Git & GitHub
- Maven Build Automation
- SonarQube Integration
- Nexus Repository Management
- Apache Tomcat Deployment
- Bash Scripting
- CI/CD Pipeline Design
- DevOps Best Practices

---

# Future Improvements

- Dockerize the application
- Deploy using Kubernetes
- Integrate ArgoCD for GitOps
- Use AWS EKS
- Add Monitoring with Prometheus & Grafana
- Implement Blue/Green Deployments

---

# Author

**Seyi Akinmusere**

DevOps | Cloud Engineer | AWS | Terraform | Jenkins | Docker | Kubernetes
