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
    - Mongo Express: ```docker run -d \
      -p 8081:8081 \
      --net mongo-network \
      --name mongo-express \
      -e ME_CONFIG_MONGODB_SERVER=mongo-db \
      -e ME_CONFIG_MONGODB_ADMINUSERNAME=admin \
      -e ME_CONFIG_MONGODB_ADMINPASSWORD=password \
      mongo-express```
    - Mongo Express uses MongoDB as server and use the credentials defined for MongoDB
5. To connect to Mongo Express
    - Go to browser and type ```localhost:8081```
    - Default credentials
    - Login: admin and password: pass
6. Create a new DB using Mongo Express UI
    - Create DB to be used with Nodejs
8. 
9. s 

