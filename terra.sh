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
cd terra_project_2

# Create Terraform File with content
cat <<EOF > main.tf
resource "random_string" "first" {
  length = 20
}
EOF
echo "main.tf created."

echo "Running terraform init..."
terraform init

echo "Running terraform apply..."
terraform apply

echo "Usage:"
echo "  ./main.sh install   # Install Terraform (run once)"
echo "  ./main.sh setup     # Create main.tf"
echo "  ./main.sh init      # Terraform init"
echo "  ./main.sh apply     # Terraform apply"
exit 1




#   chmod 755 main.sh
#   ./main.sh
