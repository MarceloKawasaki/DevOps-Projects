# Deploying Application K8s Cluster

[Project is based on TechWorld with Nana - DevOps Bootcamp](https://www.techworld-with-nana.com/devops-bootcamp)

### This project has the objective of Deploying Mongo and MongoDB applications into Kubernetes Cluster
<br />

- Pre-requisites:
  - Have Minikube installed
<br />
 
- Steps:
1. Create mongo.yaml file
2. Create secret.yaml file
    - From Docker Hub, get the desired parametes
    - In Bash, run ```echo -n <value> | base64>``` to encode credentials
    - Add credentials
   - Apply the Configuration File ```kubectl apply -f mongo-secret.yaml```
    - Edit the parameters into the main Mongo.yaml file, with credentials created
3. Apply Mongo.yaml file
4. Create Service configuration
    - Service for MongoDB
    - Inside the Mongo.yaml file
    - Apply changes
    - run ```kubectl get service``` to confirm
5. Create Mongo-express.yaml
    - From Docker Hub, get the desired parametes
    - Use the same credentials from mongo.yaml
6. Create mongo-configmap.yaml
    - Add the DB URL
    - Apply the Configuration File ```kubectl apply -f mongo-configmap.yaml```
    - Edit the parameters into the main Mongo.yaml file, with credentials created
7. Run mongo-express.yaml
8. Create Service file
    - Add in the mongo-express.yaml file in order to access from web
    - Check with ```kubectl get service```, should have 3 services created
    - Assing external-ip to mongo-express-service using ```minikube service mongo-express-service```
    - It will open the mongo-express in the browser (if ask for credentials, login: admin & password: pass)


