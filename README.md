# devops-Terraform
Terraform Complete Code

Basic Command

    sudo -i
    git --version
    sudo apt update
    git config --global user.name "Manish"
    git config --global user.email "mwagh5022@gmail.com"
    git config --list
Generate SSH Key (for Secure Login)

    ssh-keygen -t ed25519 -C "your@email.com"
Start SSH Agent and Add Key

    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/id_ed25519

Copy Public Key

    cat ~/.ssh/id_ed25519.pub
Test SSH Connection
GitHub Test:

    ssh -T git@github.com
Expected:
Hi Manish! You've successfully authenticated.

Check if SSH Key Already Exists
Run:
    
    ls -l ~/.ssh
If you see files like:
**"id_ed25519
id_ed25519.pub"**

**Start SSH Agent & Add Key**


    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/id_ed25519
Confirm:

    ssh-add -l
You should see:

    256 SHA256:xxxxx id_ed25519 (ED25519)

✅ Step 4: Copy Public Key

    cat ~/.ssh/id_ed25519.pub
