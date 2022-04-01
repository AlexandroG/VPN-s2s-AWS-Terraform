resource "aws_instance" "ws1" {
  ami                    = data.aws_ami.amazon-linux-2.id
  instance_type          = "t2.micro"
  availability_zone      = "eu-west-1a"
  vpc_security_group_ids = [aws_security_group.webserver-sg.id]
  subnet_id              = aws_subnet.web-subnet-1.id
  user_data = "${file("apache.sh")}"
  tags = {
    Name = "Web Server"
  }
}
resource "aws_instance" "ws2" {
  ami                    = data.aws_ami.amazon-linux-2.id
  instance_type          = "t2.micro"
  availability_zone      = "eu-west-1b"
  vpc_security_group_ids = [aws_security_group.webserver-sg.id]
  subnet_id              = aws_subnet.web-subnet-2.id
  user_data = "${file("apache.sh")}"
  tags = {
    Name = "Web Server 2"
  }
}

# alternative way for userdata :
/*
	user_data = << EOF
		#! /bin/bash
    sudo apt-get update
		sudo apt-get install -y apache2
		sudo systemctl start apache2
		sudo systemctl enable apache2
		echo "<h1>Deployed via Terraform</h1>" | sudo tee /var/www/html/index.html
	EOF
*/