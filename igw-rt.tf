# creation of internet gw resource
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc-test.id
  tags = {
    Name = "igw"
  }
}

# # creation of route table for the web layer
resource "aws_route_table" "web-rt" {
  vpc_id       = aws_vpc.vpc-test.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = "WebRT"
  }
}

# Creation of associations
resource "aws_route_table_association" "ass-a" {
  subnet_id      = aws_subnet.web-subnet-1.id
  route_table_id = aws_route_table.web-rt.id
}

resource "aws_route_table_association" "ass-b" {
  subnet_id      = aws_subnet.web-subnet-2.id
  route_table_id = aws_route_table.web-rt.id
}