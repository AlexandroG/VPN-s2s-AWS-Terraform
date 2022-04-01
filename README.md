# Create a VPN site 2 site in your AWS account with Terraform
this code was created in a previous project: https://github.com/AlexandroG/Simple-Terraform-Architecture.git

Just the vpn.tf file has been added with all the parameters necessary for configuring the aws side s2s vpn.
So, refer to the project mentioned above for the readme file.


## Pre-requisite

-   Make sure you have installed latest version of [Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli), [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-mac.html#cliv2-mac-prereq), and configured a `default` AWS CLI profile (see doc [here](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html#cli-configure-quickstart-profiles))

```bash
terraform -help # prints Terraform options
which aws # prints /usr/local/bin/aws
aws --version # prints aws-cli/2.0.36 Python/3.7.4 Darwin/18.7.0 botocore/2.0.0
aws configure # configure your AWS CLI profile
```
- Make sure to change your credentials path and region in ```main.tf``` file before to initializate the project 
