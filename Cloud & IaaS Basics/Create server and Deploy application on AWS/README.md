# Create Server and Deploy application on AWS

This project has the objective of creating a server on AWS EC2, and then uploading an application into it.
<br>
Project is based on TechWorld with Nana - DevOps Bootcamp

- Pre-requisites:
  - should have an existing AWS account
 
- Steps:
  - Create an Ubuntu EC2 instance in AWS (can use free-tier)
  - Create a Key Pair and store it locally (.pem file)
  - Open cmd locally and cd to the directory where the local key is stored
  - Run the SSH client connect command, to connect to EC2 instance
  - Install the softwares needed for the specific application (e.g., sudo apt install openjdk-8-jre-headless)
  - Upload application "scp -i key/path/name /directory/path ubuntu@serverip:/directory/path"
  - Can check running ls command
