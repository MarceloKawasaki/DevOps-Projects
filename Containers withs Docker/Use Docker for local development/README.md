# Use Docker for local deployment

[Project is based on TechWorld with Nana - DevOps Bootcamp](https://www.techworld-with-nana.com/devops-bootcamp)

### This project has the objective of using Docker for local deployment using frontend, backend (nodejs), and DB (MongoDB)
<br />

- Pre-requisites:
  - Have Docker on local computer
  - s 
<br />
 
- Steps:
1. Pull latest MongoDB from Docker hub
    - ```docker pull mongo```
    - Check if pulled the image ```docker images```
2. Pull latest Mongo Express from Docker hub
    - ```docker pull mongo-express```
    - Check if pulled the image ```docker images```
3. Create a Network for MongoDB and Mongo Express to run
    - ```docker network create mongo-container```
4. Run MongoDB and Mongo Express containers
    - MongoDB: ```docker run -d \
      -p 27017:27017 \
      --net mongo-network \
      --name mongo-db \
      -e MONGO_INITDB_ROOT_USERNAME=admin \
      -e MONGO_INITDB_ROOT_PASSWORD=password \
      mongo```
6. s
7. s 

