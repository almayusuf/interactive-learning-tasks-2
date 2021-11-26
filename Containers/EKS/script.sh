#!/bin/bash 
curl -LO https://dl.k8s.io/release/v1.22.0/bin/linux/amd64/kubectl
chmod +x kubectl 
sudo mv kubectl /usr/local/bin 
kubectl version --client

#Installs AWS IAM authenticator 
curl -o aws-iam-authenticator https://amazon-eks.s3.us-west-2.amazonaws.com/1.21.2/2021-07-05/bin/darwin/amd64/aws-iam-authenticator
chmod +x aws-iam-authenticator
sudo mv aws-iam-authenticator /usr/local/bin/
aws-iam-authenticator version 


