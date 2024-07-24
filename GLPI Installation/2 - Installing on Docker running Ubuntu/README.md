# Installing on Docker running Ubuntu

[Based on official Walktrough](...)


*Pre-requisites

- Have Docker installed, I also installed Docker Desktop to help
- pull latest Ubuntu version (22.04 in this case)

*Notes

- 

*Steps

1 - First create the Docker Container running Ubuntu image, open the port 80.
    - '''docker run -it -p 80:80 --name container_name ubuntu '''


2 - Once inside the Docker running Ubuntu, update apt

    - '''apt update && apt update'''

3 - Install all necessary tools

    - '''apt install /
         apt install mariadn
         apt install vim
         apt install wget'''

4 - Start apache2 and mariadb and check if they're running

    - '''service apache2 start && service mariadb start'''
    - '''service apache2 status && service mariadb status'''

5 - 
