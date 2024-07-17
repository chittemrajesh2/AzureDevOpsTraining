# Azure Container Registry (ACR) Login and Push using Azure CLI

This guide provides step-by-step instructions to log in to Azure Container Registry (ACR) and push a Docker image using Azure CLI.

## Steps

## 1. Login to Azure
First, log in to your Azure account:
```
az login
```
## 2. Set the Azure Subscription (if you have multiple subscriptions)
Specify the subscription you want to use:
```
az account set --subscription <your-subscription-id>
```

## 3. Login to Azure Container Registry
Log in to your Azure Container Registry:
```
az acr login --name <your-acr-name>
```

## 4. Tag the Docker Image
Tag your local Docker image with the ACR login server name:
```
docker tag <your-local-image>:<tag> <your-acr-name>.azurecr.io/<your-repo-name>:<tag>
```

## 5. Push the Docker Image to ACR
Push the tagged image to your ACR:

```
docker push <your-acr-name>.azurecr.io/<your-repo-name>:<tag>
```
Example
# Assuming you have a Docker image named myapp with a tag v1 and your ACR name is myacr, follow these steps:

## 1. Login to Azure

az login
## 2. Set the Azure Subscription

az account set --subscription 12345678-1234-1234-1234-123456789abc
## 3. Login to Azure Container Registry

az acr login --name myacr
## 4. Tag the Docker Image

docker tag myapp:v1 myacr.azurecr.io/myrepo/myapp:v1
## 5. Push the Docker Image to ACR

docker push myacr.azurecr.io/myrepo/myapp:v1
This sequence of commands logs you into Azure, sets the correct subscription, logs into your ACR instance, tags your local Docker image, and finally pushes the image to your ACR.