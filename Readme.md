# Udacity Capstone Project
This is the final project "Capstone" for AWS Cloud DevOps Engineer Nanodegree Program.
This project includes building CI/CD pipeline to deploy dockerized micro service application to Amazon EKS.

## Project proposal
My Capstone project is to deploy application `app.py` using the below technologies:
1- `app.py` is a python application that runs inside docker container
2- CI/CD pipelines are implemented using CircleCI
3- Deployment type is: rolling update
4- Deployment will be done to AWS EKS Kubernetes cluster

## Technology Used:
* AWS EKS
* CircleCI
* Python
* Docker
* Kubernetes
* Ansible
* Makefile
* Anchore for docker vulnerability scan
* hadolint for Dockerfile linting
* pylint for python linting

## Project checklist
- [x] All project code in this GitHub repo
- [x] Project uses a centralized image repository -- > DockerHub
- [ ] Kubernetes cluster is created using ekstool "using CloudFormation" LINK

## Building pipline checklist:
- [x] Linting code and docker file
- [x] Build docker image using Dockerfile
- [x] "BONUS" Scan docker image
- [x] Push docker image to DockerHub
- [ ] Perform rolling update to AWS EKS using new docker image

## Requirements checklist
- [ ] Screenshot of linting success and failure LINK
- [ ] Screenshot of Circle CI pipeline showing deployment LINK
- [ ] Screenshot of AWS EKS rolling update LINK

## Additional steps in CI:
- [x] Perform security scanning of the Docker containers
