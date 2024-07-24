# Installing on Docker running Ubuntu

[Based on official Walktrough](https://faq.teclib.com/03_knowledgebase/procedures/install_glpi/#create-a-user-and-database-dedicated-to-glpi)


*Pre-requisites

- Have Docker installed, I also installed Docker Desktop to help
- pull latest Ubuntu version (22.04 in this case)

*Notes

- 

*Steps

1 - First create the Docker Container running Ubuntu image, open the port 80.
    - '''docker run -it -p 80:80 --name container_name ubuntu '''


2 - Once inside the Docker running Ubuntu, update apt

    - '''apt update && apt upgrade'''

3 - Install all necessary tools

    - '''apt install -y apache2 php php-{apcu,cli,common,curl,gd,imap,ldap,mysql,xmlrpc,xml,mbstring,bcmath,intl,zip,redis,bz2} libapache2-mod-php php-soap php-cas
a       pt install -y mariadb-server
         apt install vim
         apt install wget'''

4 - Start apache2 and mariadb and check if they're running

    - '''service apache2 start && service mariadb start'''
    - '''service apache2 status && service mariadb status'''

5 - 
