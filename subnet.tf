# creation of web subnet
resource "aws_subnet" "web-subnet-1" {
  vpc_id                  = aws_vpc.vpc-test.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "eu-west-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "Web-1a"
  }
}
resource "aws_subnet" "web-subnet-2" {
  vpc_id                  = aws_vpc.vpc-test.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "eu-west-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "Web-2b"
  }
}

# creation of app subnet
resource "aws_subnet" "application-subnet-1" {
  vpc_id                  = aws_vpc.vpc-test.id
  cidr_block              = "10.0.11.0/24"
  availability_zone       = "eu-west-1a"
  map_public_ip_on_launch = false

  tags = {
    Name = "Application-1a"
  }
}

resource "aws_subnet" "application-subnet-2" {
  vpc_id                  = aws_vpc.vpc-test.id
  cidr_block              = "10.0.12.0/24"
  availability_zone       = "eu-west-1b"
  map_public_ip_on_launch = false

  tags = {
    Name = "Application-2b"
  }
}

# creation of db subnet
resource "aws_subnet" "database-subnet-1" {
  vpc_id            = aws_vpc.vpc-test.id
  cidr_block        = "10.0.21.0/24"
  availability_zone = "eu-west-1a"

  tags = {
    Name = "Database-1a"
  }
}

resource "aws_subnet" "database-subnet-2" {
  vpc_id            = aws_vpc.vpc-test.id
  cidr_block        = "10.0.22.0/24"
  availability_zone = "eu-west-1b"

  tags = {
    Name = "Database-2b"
  }
}

