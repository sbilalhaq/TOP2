resource "aws_subnet" "subnetsforvpc1" {
  vpc_id = aws_vpc.vpcs.1.id
  for_each = {
    1 = "10.193.220.0/28"

  }
  cidr_block = each.value



  tags = {
    Name = "1sub ${each.key}"
  }
}

resource "aws_subnet" "subnetsforvpc2" {
  vpc_id = aws_vpc.vpcs.2.id
  for_each = {
    1 = "10.193.221.0/28"

  }
  cidr_block = each.value



  tags = {
    Name = "2sub ${each.key}"
  }
}
