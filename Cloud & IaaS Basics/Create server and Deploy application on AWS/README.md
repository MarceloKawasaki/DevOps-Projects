# Create Server and Deploy application on AWS

[Project is based on TechWorld with Nana - DevOps Bootcamp](https://www.techworld-with-nana.com/devops-bootcamp)

### This project has the objective of creating a server on AWS EC2 and then uploading an application into it.
<br />

- Pre-requisites:
  - Have an existing AWS account
<br />
 
- Steps:
1. Create an Ubuntu EC2 instance in AWS (can use free-tier)  
    - Add Inbound Rule on Security Group to allow SSH from IPv4 and IPv6
  
2. Create a Key Pair and store it locally (.pem file)
3. Open cmd locally and cd to the directory where the local key is stored
4. Run the SSH client connect command, to connect to EC2 instance
    - Maybe the permission will be too open:
    - if its UNIX, use the commad ```chmod 400 "<keyname>"```
    - if Windows, will need to open the key > Properties > Security > Advanced, and remove all but your User
5. Install the softwares needed for the specific application (e.g., ```sudo apt install openjdk-8-jre-headless```)
    - do ```sudo apt update``` first
    - then you will be able to download the software
6. Upload application into the server
    - command: ```scp -i key/path/name /directory/path ubuntu@serverip:/directory/path```
7. Can check running ls command
