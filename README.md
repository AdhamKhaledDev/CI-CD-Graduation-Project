# CI/CD Pipeline Project

## Introduction
Welcome to our CI/CD Pipeline Project! This project is the portfolio project for ALX graduation, showcasing our skills in DevOps practices and tools. Our team, consisting of Adham Khaled and Gerges Zechariah, has implemented a comprehensive CI/CD pipeline using GitHub, Jenkins, and Docker on a sample application.

## Project Overview
This DevOps project demonstrates the implementation of a Continuous Integration and Continuous Deployment (CI/CD) pipeline. We've utilized a sample application previously developed by Gerges Zechariah as the basis for our pipeline setup.

### Key Components:
- **Version Control**: GitHub
- **Continuous Integration**: Jenkins
- **Containerization**: Docker
- **Deployment**: Two Digital Ocean servers

## Sample Application: Typing Speed Test Game
The sample application used in this project is a Typing Speed Test Game. Below is an overview of the original application:
- Multiple difficulty levels: Easy, Normal, and Hard
- Immediate word check functionality
- Dynamic score display
- Adjustable timer based on difficulty

## CI/CD Pipeline Implementation
Our CI/CD pipeline automates the process of building, testing, and deploying the Typing Speed Test Game application. Here's a high-level overview of our pipeline:
1. **Code Repository**: GitHub hosts our application code and pipeline configuration.
2. **Continuous Integration**: Jenkins is set up to automatically trigger builds on code commits.
3. **Containerization**: Docker is used to create consistent, isolated environments for our application.
4. **Deployment**: The pipeline automatically deploys the containerized application to two Digital Ocean servers, ensuring redundancy and high availability.

## Detailed Jenkins Configuration Guide

### Prerequisites
- A Linux server for Jenkins (Ubuntu recommended)
- A separate deploy server
- Sudo privileges on both servers

### SSH Key Configuration

#### On the Deploy Server:
1. Generate and configure SSH keys:
```bash
cd /root
ssh-keygen -t rsa -b 4096 -C "jenkins@example.com"
cd /root/.ssh
cat id_rsa.pub >> authorized_keys
chmod 600 authorized_keys
```

2. Copy the private key content (you'll need this for Jenkins):
```bash
cat id_rsa
```

#### On the Jenkins Server:
1. Install Required Plugin:
   - Navigate to "Manage Jenkins" > "Manage Plugins"
   - Install "SSH Plugin"
   - Restart Jenkins if prompted

2. Configure SSH Credentials:
   - Go to "Manage Jenkins" > "Manage Credentials"
   - Add new SSH credentials under "System" > "Global credentials"
   - Choose "SSH Username with private key"
   - Paste the previously copied private key
   - Provide appropriate ID and description

3. Test SSH Connection:
   - Navigate to "Manage Jenkins" > "Configure System"
   - Add and verify SSH remote host configuration
   - Use "Check connection" to ensure proper setup

### Security Best Practices
1. Always use key-based authentication
2. Implement regular key rotation
3. Use bastion hosts or VPN for production access
4. Configure proper firewall rules
5. Utilize SSH config files for connection management

### Troubleshooting Guide
If you encounter issues, verify:
```bash
# Correct SSH permissions
chmod 700 ~/.ssh
chmod 600 ~/.ssh/id_rsa
chmod 644 ~/.ssh/id_rsa.pub

# SSH service status
service ssh status

# Firewall configuration
ufw status
```

## Team Members
- **Adham Khaled**: [https://www.linkedin.com/in/adham-khaalid](#)
- **Gerges Zechariah**: [https://www.linkedin.com/in/gerges-zechariah](#)

## Project Playbook
- **Google Slides**: [https://docs.google.com/presentation/d/1tP15kc1J0kRrlpQmgYDdexQEY_47xDZGt0MCNuYH8iw/edit?usp=sharing](#)

## Acknowledgements
- ALX Africa for providing the opportunity and guidance for this graduation project
- Digital Ocean for hosting our deployment servers
- The open-source communities behind GitHub, Jenkins, and Docker
