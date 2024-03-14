# Docker Compose - Run multiple Docker containers

[Project is based on TechWorld with Nana - DevOps Bootcamp](https://www.techworld-with-nana.com/devops-bootcamp)

### This project has the objective of running multiple containers with Docker compose
<br />

- Pre-requisites:
  - Have Docker on local computer
  - Have an application (could be in other folder)
  - Done the previous project ["Use Docker for Local Deployment"](https://github.com/MarceloKawasaki/DevOps-Projects/tree/main/Containers%20withs%20Docker/Use%20Docker%20for%20local%20development)
<br />
 
- Steps:
1. Create the Docker Compose File (.yaml)
2. Open the Bash and run ```docker-compose -f <docker compose file.yaml> up``` to create the containers
3. It takes some time to connect the Mongo and Mongo-express
4. Then you can actually test the mongo-express by typing ```localhost:8081``` (default login: admin and password: pass)
5. To stop all the container, run the command ```docker-compose -f <docker compose file.yaml> down```


