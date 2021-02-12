<div align="center">

[![mostafaabdelrahman](https://circleci.com/gh/mostafaabdelrahman/udacity-devops-capstone.svg?style=shield)](https://app.circleci.com/pipelines/gh/mostafaabdelrahman/udacity-devops-capstone)

</div>

# Udacity Capstone Project
This is the final project "Capstone" for AWS Cloud DevOps Engineer Nanodegree Program.
This project includes building CI/CD pipeline to deploy dockerized micro service application to Amazon EKS.

---

## Project proposal
My Capstone project is to deploy application `app.py` using the below technologies:

1. `app.py` is a python application that runs inside docker container
2. CI/CD pipelines are implemented using CircleCI
3. Deployment type is: rolling update
4. Deployment will be done to AWS EKS Kubernetes cluster

---

## Technology Used:
* AWS EKS
* CircleCI
* Python
* Docker
* Kubernetes
* Makefile
* Anchore for docker vulnerability scan
* hadolint for Dockerfile linting
* pylint for python linting

---

## Project checklist
- [x] All project code in this GitHub repo
- [x] Project uses a centralized image repository "DockerHub"
- [x] Kubernetes cluster is created using `eksctl` "using CloudFormation"
    `make create-eks`
- [x] Kubernetes initial deployment "version 1"
    `make create-deployment`

---

## Building pipline checklist:
- [x] Linting code and docker file
- [x] Build docker image using Dockerfile
- [x] "BONUS" Scan docker image using Anchore
- [x] Push docker image to DockerHub
- [x] Perform rolling update to AWS EKS using new docker image

---

## Requirements checklist
- [x] Screenshot of linting success and failure:
    - [x] [linting success](screenshots/lint-success.JPG)
    - [x] [linting failure](screenshots/lint-failure.JPG)
- [x] Screenshots of Circle CI pipeline showing deployment:
    - [x] [Full Circle CI pipeline workflow](screenshots/capstone-circleci.JPG)
    - [x] [Deployment pipeline steps](screenshots/capstone-deploy-pipline.JPG)
- [x] Screenshots of AWS EKS rolling update LINK
    - [x] [EKS deployment before rolling update](screenshots/eks-before-rolling.JPG)
    - [x] [EKS deployment after rolling update](screenshots/eks-after-rolling.JPG)
    - [x] [EC2 nodegroup instances](screenshots/eks-ec2-nodegroup.JPG)

---

## Additional steps in CI:
- [x] Perform security scanning of the Docker containers
