
#!bin/bash

# AWS CLI install
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

mkdir project
cd project
echo " Project Folder Created! now Configure AWS CLI "
aws configure

echo " Create User in AWS, and get the AWS Access and Secret Key"
