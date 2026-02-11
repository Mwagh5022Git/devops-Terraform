#!/bin/bash

#   sudo apt install -y terraform
if ! command -v terraform &> /dev/null; then
  echo "Installing Terraform..."

  wget -O - https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(grep -oP '(?<=UBUNTU_CODENAME=).*' /etc/os-release || lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform

  touch .terraform_installed

else
  echo "Terraform already installed, skipping..."

fi

terraform version
mkdir terra_project_2
chmod 744 2_terra_execute.sh
chmod 744 3_aws_cli.sh
cd terra_project_2
