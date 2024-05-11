# Automate Provisioinng EC2 with Terraform

[Project is based on TechWorld with Nana - DevOps Bootcamp](https://www.techworld-with-nana.com/devops-bootcamp)

- Pre-requisites:
  - Make sure to have the .gitignore properly set, to avoid getting an error when pushing de Terraform directory with the .terraform/* files (above 100M GitHub limit)
    - Check it the [.gitignore](https://github.com/MarceloKawasaki/DevOps-Projects/blob/main/.gitignore) file in the main DEVOPS-PROJECTS folder
    - If you pushed before doing everything and got the error, just delete the Local Repository and connect a new one (is faster than trying to fix)
    - [GitHub post about the issue](https://github.com/hashicorp/terraform-guides/issues/92)
<br />
 
- Steps:
1. Create the main.tf file, containing the code