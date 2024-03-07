# Create a Freestyle Job

[Project is based on TechWorld with Nana - DevOps Bootcamp](https://www.techworld-with-nana.com/devops-bootcamp)

### This project has the simple objective creating a Freestyle Job on Jenkins
<br />

- Pre-requisites:
  - Have a instance running Jenkins
  - Have Maven, Nodejs installed [(Previous Project)](https://github.com/MarceloKawasaki/DevOps-Projects/tree/main/Build%20Automation%20and%20CI%20CD%20with%20Jenkins/Install%20Jenkins%20on%20AWS%20EC2)
<br />
 
- Steps:
1. Log into Jenkins
2. Create a new Freestyle Job
    - Build Steps
      - Commands: ```npm --version
      - Invoke top-level Maven Targets
3. Build Now
    - Console Output, we can see what happened
4. Configure Git Repository
    - In the Job, Configuration > Source Code Management > Git
      - Enter Git Repo URL
      - Add Git Credentials
        - GitHub or GitLab username and password
        - enter ID name for credential
      - Choose Branch
   - Build Now again 
5.   



