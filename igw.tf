resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpcs.1.id

  tags = {
    Name = "igw1"
  }
}

