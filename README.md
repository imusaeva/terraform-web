# terraform-web
This Repository is for VPC , ASG , ALB
``` Task :
 - Create one folder called “vpc” and put the latest version of your VPC code.
 - Create one folder called “asg” and put the latest version of your ASG code.
 - Create one folder called “alb” and put the latest version of your ALB code.
Note:
- 3 infrastructures should have 3 different terraform.tfstate
- Create ASG on your Custom VPC and use Data Sources to fetch VPC, Subnet Ids
- Create ALB on your Custom VPC and use Data Sources to fetch VPC, Subnet Ids
- Attach your ALB to ASG and use Data Sources to fetch ASG Id.
Must:
EC2 instances should have Apache installed and Index.html file created in /var/www/html folder.
```