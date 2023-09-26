
# Provisioning the Amazon EKS cluster using Terraform
This repository contains the terraform file code, which we can use to provision the **Amazon EKS** cluster as part of Project 4 of our **10WeeksofCloudOps** series! In this comprehensive hands-on project, we dive deep into the world of **GitOps and ArgoCD**, demonstrating how to implement these essential DevOps practices step by step by **dockerizing** the application and provisioning the infrastructure using **Terraform**(this repo).

## 💪Complete Hands-on video tutorial for this project. Click here 👇
[![GitOps , ArgoCD, Terraform](https:)](https://youtu.be/ "GitOps|ArgoCD|Terraform")

## Architecture Diagram

![Architecture Diagram](https://images2.imgbox.com/47/7d/kjhY0Myn_o.png?download=true)


## Installation of Terraform
Follow the below steps to Install the Terraform and another dependency.

1️⃣ Clone the repo

``` git clone https://github.com/jossydee1/DevOps-Project1_Terraform.git ```

2️⃣ Let's install dependency to deploy the application

``` 
cd kube_terraform/Meme-App/
terraform init
```

3️⃣ Edit the below file according to your configuration

`vim kube_terraform/Meme-App/backend.tf`

add below code

```
terraform {
  backend "s3" {
    bucket = "S3-BUCKET-NAME"
    key    = "backend/TFSTATE-FILE.tfstate"
    region = "us-east-1"
    dynamodb_table = "DYNAMODB-TABLE-NAME"
  }
}
```

Let's set up the variable for our Infrastructure and create one file with the name of terraform.tfvars inside kube_terraform/Meme-App/backend.tf and add the below conntent into that file.

```
REGION          = "us-east-1"
PROJECT_NAME    = "Meme-App"
VPC_CIDR        = "10.0.0.0/16"
PUB_SUB1_CIDR   = "10.0.1.0/24"
PUB_SUB2_CIDR   = "10.0.2.0/24"
PRI_SUB3_CIDR   = "10.0.3.0/24"
PRI_SUB4_CIDR   = "10.0.4.0/24"
```

Please note that the above file is crucial for setting up the infrastructure, so pay close attention to the values you enter for each variable.

It's time to build the infrastructure

The below command will tell you what terraform is going to create.

`terraform plan`

Finally, HIT the below command to create the infrastructure...

`terraform apply`

type yes, and it will prompt you for permission or use --auto-approve in the command above.


**This project contains Three GitHub repositories**

➡️ [App Code] (https://github.com/jossydee1/DevOps-Project1_AppCode.git)

➡️ [Terraform code] (https://github.com/jossydee1/DevOps-Project1_Terraform.git)

➡️ [Manifest Repo] (https://github.com/jossydee1/DevOps-Project1_Kube_manifest.git)
