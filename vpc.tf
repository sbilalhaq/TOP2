resource "aws_vpc" "vpcs" {
  for_each = {
    1 = "10.193.220.0/24"
    2 = "10.193.221.0/24"
  }

  cidr_block = each.value

  tags = {
    Name = "use1-prod-vpc ${each.key}"
  }
}