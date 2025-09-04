AWS CI/CD Pipeline Project

# AWS CI/CD Pipeline for Java Web App

This project demonstrates a **CI/CD pipeline on AWS** for a **Java Maven web application**.  
It uses **GitHub → AWS CodeBuild → CodeDeploy → CodePipeline** to automate builds and deployments.

---

## 🚀 Features
- **Automated Build**: Every push to GitHub triggers AWS CodeBuild.
- **Continuous Deployment**: CodeDeploy deploys the build to EC2 instances.
- **Pipeline Orchestration**: Managed via AWS CodePipeline.
- **Artifact Storage**: Build artifacts stored in S3.
- **Infrastructure as Code**: IAM roles and permissions configured with least-privilege principle.

---

## 🛠️ Tech Stack
- [AWS EC2](https://aws.amazon.com/ec2/) – Application host  
- [AWS CodeBuild](https://aws.amazon.com/codebuild/) – Build automation  
- [AWS CodeDeploy](https://aws.amazon.com/codedeploy/) – Deployment service  
- [AWS CodePipeline](https://aws.amazon.com/codepipeline/) – CI/CD pipeline orchestration  
- [GitHub](https://github.com/) – Source control  
- [Java Maven](https://maven.apache.org/) – Build tool  

---

🚀 Project Workflow

Source Stage
Code is pulled from GitHub repository.
Build Stage
AWS CodeBuild compiles the project using Maven.
Generates the application artifact (.jar).
Deploy Stage
AWS CodeDeploy deploys the artifact to the EC2 instance created via CloudFormation.
The application is configured to run as a systemd service.
Infrastructure as Code (IaC)
The EC2 instance, VPC, Security Groups, IAM Roles, and Networking are provisioned via CloudFormation.
Pipeline Automation
AWS CodePipeline automates the entire workflow from commit → build → deploy.

📦 Tech Stack

AWS CodePipeline – Orchestration

AWS CodeBuild – Build automation (Maven)

AWS CodeDeploy – Deployment automation

AWS CloudFormation – Infrastructure provisioning

EC2 (Ubuntu) – Hosting environment

Java 8 (Amazon Corretto) – Runtime

Maven – Build tool

GitHub – Source control

## ⚙️ Setup & Deployment
1. **Push code** to GitHub → triggers pipeline automatically.
2. **CodeBuild** compiles the Maven project & runs tests.
3. **CodeDeploy** deploys artifacts to EC2.
4. **CodePipeline** manages the workflow end-to-end.

---

## 📸 Pipeline Flow
GitHub → CodeBuild → S3 → CodeDeploy → EC2 → Live App


🖼️ Deployment Screenshots


✅ CodeBuild Success
<img width="1920" height="1020" alt="Screenshot 2025-09-02 131625" src="https://github.com/user-attachments/assets/c3777be2-aad2-4e5c-9dbe-06b4692b794f" />

✅ CodeDeploy Success
<img width="1920" height="1020" alt="Screenshot 2025-09-03 231830" src="https://github.com/user-attachments/assets/f69373d6-27ac-4fd3-ac36-b1645d7dad8b" />

✅ CloudFormation Stack
<img width="1920" height="1020" alt="Screenshot 2025-09-03 122112" src="https://github.com/user-attachments/assets/d0ca60af-ed04-408e-9773-e7becd4213ac" />

✅ Pipeline Success
<img width="1920" height="1020" alt="Screenshot 2025-09-04 003358" src="https://github.com/user-attachments/assets/26c661ac-41c7-4764-b37a-4c6e49a0e009" />

## 🔒 IAM Permissions
- **CodeBuild**: Access to S3 (read/write artifacts).  
- **CodeDeploy**: Access to EC2 + S3.  
- **CodePipeline**: Orchestration of services.  


## 📧 Contact
- Email: [husnishafeer@gmail.com](mailto:husnishafeer@gmail.com)  
- GitHub: [mohamed-husni](https://github.com/mohamed-husni)  
- LinkedIn: [Mohamed Husni](https://www.linkedin.com/in/mohamed-husni-15089522a/)  
