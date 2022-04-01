# DATA block is used to retrieve information from the provider
# I've used it to have always the latest amazon linux 2 ami
data "aws_ami" "amazon-linux-2" {
  most_recent = true
  owners   = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-ebs"]
  }
}