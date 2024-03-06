# Install Jenkins on AWS EC2

[Project is based on TechWorld with Nana - DevOps Bootcamp](https://www.techworld-with-nana.com/devops-bootcamp)

### This project has the simple objective of installing Jenkins on AWS EC2 instance
<br />

- Pre-requisites:
  - Have an AWS account
<br />
 
- Steps:
1. Create a new AWS EC2 instance
    - Recommended to have at least 1GB/1CPU (more is better, but out of free tier)
    - Change Security Group to allow inbound port for IPv4 and 6 for port 8080 (Jenkins)
2. Connect to EC2 instance via SSH
3. Install Docker
    - Always do first: ```sudo apt update```
    - Then ```sudo apt install docker.io```
4. Pull Jenkins Image from Docker Hub and run Container
    - Run commmand ```sudo docker run -p 8080:8080 -p 50000:50000 -d \
      -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts```
    - Verify if Container is running ```sudo docker ps```
5. Check if Jenkins is running on Browser
    - Get EC2 instance IPv4 address
    - Paste and add port 8080 e.g., 0.0.0.0:8080 on browser
    - It will open Jenkins and ask for password
6. First access password
    - The password can be accessed in the directory in two ways
    - 1 
      - Entering docker  ```sudo docker exec -it <container id> bash```
      - Directory path: ```cat /var/jenkins_home/secrets/initialAdminPassword```
    - 2
      - ...
7. Enter info to start Jenkins   



