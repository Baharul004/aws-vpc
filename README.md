# aws-vpc
The goal of this project is to create a VPC and AWS instance using Terraform .
User needs to create his/her own terraform.tfvars file where need to declare the below field:
    
    aws_access_key_id = "" 
    aws_secret_access_key = "" 
    aws_region = "" 
    public_key = ""
    
The project is following the below step by step procedure:

    1. terraform.tfvars
    2. var.tf
    3. provider.tf
    4. vpc.tf
    5. subnet.tf
    6. security-group.tf
    7. internet-gateway.tf
    8. route-table.tf
    9. subnet-associations.tf
    10. instance.tf
