#!/bin/bash

# update and install Terraform and Create new Folder

read -p  "Enter the Folder name : " folder_name
echo " Folder $folder_name Created" && cd $folder_name

wget -O - https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(grep -oP '(?<=UBUNTU_CODENAME=).*' /etc/os-release || lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform

read -p "Enter File name (With Extensions) :" file_name
cat <<EOF $file_name

#!/bin/bash


EOF

chmod 744 $file_name
./$file_name


