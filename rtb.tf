resource "aws_route_table" "vpcrtb1" {
  vpc_id = aws_vpc.vpcs.1.id

  route {
    cidr_block = "10.193.221.0/24"
    gateway_id = aws_ec2_transit_gateway.tgw.id
  }
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  depends_on = [
    aws_ec2_transit_gateway.tgw
  ]
}

resource "aws_route_table" "vpcrtb2" {
  vpc_id = aws_vpc.vpcs.2.id

  route {
    cidr_block = "10.193.220.0/24"
    gateway_id = aws_ec2_transit_gateway.tgw.id
  }
  depends_on = [
    aws_ec2_transit_gateway.tgw
  ]
}