---

# 1. Terraform Version
  Terraform का installed version check करने के लिए।

    terraform version

Example Output
    
    Terraform v1.6.0

# 2. Terraform Init  :  Terraform project initialize करता है।
Command:
  * Provider download करती है
  * Backend configure करती है
  * .terraform folder बनाती है

        terraform init

# 3. Terraform Validate  :  Terraform configuration syntax check करता है।

    terraform validate
  
# 4. Terraform Format  :  Terraform files को automatically format करता है।

    terraform fmt
  Recursive formatting

    terraform fmt -recursive

# 5. Terraform Plan  :  Terraform changes apply करने से पहले preview दिखाता है।
  यह बताता है:
    * क्या create होगा
    * क्या modify होगा
    * क्या destroy होगा

    terraform plan

  Plan save करने के लिए:

    terraform plan -out=tfplan

# 6. Terraform Apply  :  Terraform infrastructure create / update करता है।

    terraform apply

  Auto approve:

    terraform apply -auto-approve
  Saved plan apply:

    terraform apply tfplan

# 7. Terraform Destroy  :  Terraform created infrastructure delete करता है।

    terraform destroy
  Auto approve:

    terraform destroy -auto-approve

# 8. Terraform Show  :  Terraform state या plan file show करता है।

    terraform show
  Plan file show करने के लिए:

    terraform show tfplan

# 9. Terraform State  :  Terraform state file manage करने के लिए।

  State list:

    terraform state list
  State show:

    terraform state show aws_instance.web

# 10. Terraform Output  :  Terraform outputs show करता है।

    terraform output
  Specific output:

    terraform output instance_ip

# 11. Terraform Refresh  :  Infrastructure state update करता है।

    terraform refresh

# 12. Terraform Workspace  :  Multiple environments manage करने के लिए।
  Workspace list

    terraform workspace list
  Create workspace

    terraform workspace new dev
  Switch workspace
    
    terraform workspace select prod

# **Basic Terraform Workflow (Most Important)**

  Step-1  
  
    terraform init
  Step-2

    terraform validate
  Step-3

    terraform plan
  Step-4

    terraform apply
  Step-5 (Delete infra)

    terraform destroy

✅ **DevOps Interview Tip**
    Most used Terraform commands:
      ```
      terraform init
      terraform plan
      terraform apply
      terraform destroy
      terraform validate
      terraform fmt
      terraform output
      terraform state
      ```

जो DevOps interview में बहुत काम आते हैं।
