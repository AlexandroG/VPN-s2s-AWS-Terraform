# Simple-Terraform-Architecture
A simple terraform architecture with a web and db layers

## Expectation
This project aims to provide just a simple IaC that is a good point to start deploying your own infrastructure with terraform.
Resource that will be created:
- RDS Instance with multi-az enabled
- 2 web server without asg and EFS to share content.
- Application Load Balancer
- Vpc, subnet, igw, sg, and routing table

## Pre-requisite

-   Make sure you have installed latest version of [Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli), [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-mac.html#cliv2-mac-prereq), and configured a `default` AWS CLI profile (see doc [here](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html#cli-configure-quickstart-profiles))

```bash
terraform -help # prints Terraform options
which aws # prints /usr/local/bin/aws
aws --version # prints aws-cli/2.0.36 Python/3.7.4 Darwin/18.7.0 botocore/2.0.0
aws configure # configure your AWS CLI profile
```
- Make sure to change your credentials path and region in ```main.tf``` file before to initializate the project 


N.B.
There are some consideration:
1. the purpose of this project is to start using terraform and understand how the various resources are created
2. I've not used some resources necessary to deploy this kind of infrastructure like autoscaling group, efs etc..
3. This infrastructure is not meant to be scalable and high reliability.