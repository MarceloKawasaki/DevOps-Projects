# Minikube Installation

[Project is based on TechWorld with Nana - DevOps Bootcamp](https://www.techworld-with-nana.com/devops-bootcamp)

### This project has the objective of installing minikube
<br />

- What is 'minikube'?
  - One node cluster where the Control Plane Processes and Worker Processes run in the same node
  - Minikube has Docker pre-insalled to run the containers in the cluster
 
- What is 'kubectl'?
  - CLI tool for Kubernetes

- Pre-requisites:
  - Have Docker on local computer
  - Have an application (could be in other folder)
<br />
 
- Steps (for Windows):
1. Download Minikube [(instructions)](https://minikube.sigs.k8s.io/docs/start/)
2. Run command ```minikube start --driver docker``` (it might take some time to go through all processes)
3. Minikube is ready to go



