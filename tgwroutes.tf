/*resource "aws_ec2_transit_gateway_route" "tgw_rt1" {
  destination_cidr_block         = "10.193.220.0/24"
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.tgw_rtb1.id
}

resource "aws_ec2_transit_gateway_route" "tgw_rt2" {
  destination_cidr_block         = "10.193.221.0/24"
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.tgw_rtb2.id
}
*/


resource "aws_ec2_transit_gateway_route_table_propagation" "rtbprop1" {
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.tgw_attachment1.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.tgw_rtb1.id
}

resource "aws_ec2_transit_gateway_route_table_propagation" "rtbprop2" {
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.tgw_attachment2.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.tgw_rtb2.id
}