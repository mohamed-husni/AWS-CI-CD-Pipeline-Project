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

## 📂 Project Structure
aws-cicd-pipeline/
├─ app/ # Java Maven web application
├─ appspec.yml # CodeDeploy specification
├─ buildspec.yml # CodeBuild specification
├─ scripts/ # Deployment scripts
├─ README.md

## ⚙️ Setup & Deployment
1. **Push code** to GitHub → triggers pipeline automatically.
2. **CodeBuild** compiles the Maven project & runs tests.
3. **CodeDeploy** deploys artifacts to EC2.
4. **CodePipeline** manages the workflow end-to-end.

---

## 📸 Pipeline Flow
GitHub → CodeBuild → S3 → CodeDeploy → EC2 → Live App



## 🔒 IAM Permissions
- **CodeBuild**: Access to S3 (read/write artifacts).  
- **CodeDeploy**: Access to EC2 + S3.  
- **CodePipeline**: Orchestration of services.  


## 📧 Contact
- Email: [husnishafeer@gmail.com](mailto:husnishafeer@gmail.com)  
- GitHub: [mohamed-husni](https://github.com/mohamed-husni)  
- LinkedIn: [Mohamed Husni](https://www.linkedin.com/in/mohamed-husni-15089522a/)  
