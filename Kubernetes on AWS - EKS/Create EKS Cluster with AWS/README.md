# Create EKS Cluster with AWS

[Project is based on TechWorld with Nana - DevOps Bootcamp](https://www.techworld-with-nana.com/devops-bootcamp)

### This project has the objective of creating EKS Cluster with AWS
<br />

- Pre-requisites:
  - Have an AWS Account (can be free-tier)
<br />
 
- Steps:
1. Create EKS IAM Role (global for account)
    - AWS Services
    - Use case: EKS - Cluster
2. Create VPC for Worker Nodes
    - Use CloudFormation (CFN) Template [Template for Public and Private Subnets](https://docs.aws.amazon.com/eks/latest/userguide/creating-a-vpc.html)
    - Copy IPv4 URL and paste in CFN creation with S3 host
3. Create EKS Cluster (Control Plane Nodes)
    - Select IAM Role created
    - Select VPC and SG created
    - In Cluster endpoint access, select Public and Private
4. Connect kubectl with EKS Cluster
    - In local Terminal create a kubeconfig file to connect to EKS
    - Run ```aws eks update-kubeconfig --name <eks custer name>
    - Can now use kubectl commands
5. Create EC2 IAM Role for Node Group
    - AWS Services
    - Use case: EC2 (default)
      - add 3 policies:
        - 1. AmazonEC2ContainerRegistryReadOnly (permissions to ECR)
        - 2. AmazonEKSWorkerNodePolicy (permissions to EC2 and EKS)
        - 3. AmazonEKS_CNI_Policy (access to CNI Policy)
6. Create Node Group and attach to EKS Cluster
    - Select IAM Role created
    - EC2 Intances configuration
      - Capacity type: On-Demand (default)
    - Node group configuration, leave default
7. Configure ASG
8. Deploy our Application to our EKS Cluster


