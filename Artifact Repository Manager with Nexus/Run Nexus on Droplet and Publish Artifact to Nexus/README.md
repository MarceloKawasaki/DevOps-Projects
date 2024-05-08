# Ren Nexus on AWS and Publish Artifact to Nexus

[Project is based on TechWorld with Nana - DevOps Bootcamp](https://www.techworld-with-nana.com/devops-bootcamp)

### This project has the objective of running Nexus on AWS EC2 instance and then publish an artifact to Nexus
<br />

- Pre-requisites:
  - Have an existing AWS account and EC2 instance
  - Have done [previous project](https://github.com/MarceloKawasaki/DevOps-Projects/tree/main/Cloud%20%26%20IaaS%20Basics/Create%20server%20and%20Deploy%20application%20on%20AWS) 
<br />
 
- Steps:
1. Connect to server via SSH
2. Install java version 8 (pre-requisite for Nexus)
3. Install latest version of Nexus
    - Move to /opt folder
    - Install Nexus ```sudo wget https://download.sonatype.com/nexus/3/nexus-3.65.0-02-unix.tar.gz```
    - Untar tar ```-zxvf nexus-3.65.0-02-unix.tar.gz```
4. Create User for Nexus (best practice)
    - ```sudo adduser Nexus```
    - ```ls -l``` on /opt folder to see permissions and ownership for the Nexus files installed
    - Will need to change from root to nexus
    - e.g., ```sudo chown -R nexus:nexus nexus-3.65.0-02``` (execute permission needed)
    - ```sudo chown -R nexus:nexus sonatype-work``` (R/W permissions needed)
5. Change configuration to Nexus run as User
    - e.g., ```sudo vim nexus-3.65.0-02/bin/nexus.rc```
    - Uncomment and change to start on "nexus" (exit file ":wq")
6. Run Nexus
    - Switch to Nexus user ```su - nexus```
    - Star nexus e.g., ```/opt/nexus-3.65.0-02/bin/nexus start```
    - Check if started ```ps aux | grep nexus``` and ```netstat -lnpt```

