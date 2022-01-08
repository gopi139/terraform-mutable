resource "aws_route_table" "route" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = var.DEFAULT_VPC_CIDR
    vpc_peering_connection_id = aws_vpc_peering_connection.peer.id
  }


  tags = {
    Name = "example"
  }
}
resource "aws_route" "route-from-default-vpc" {
  count                     = length(tolist(data.aws_route_tables.default-vpc-route.ids))
  route_table_id            = element(tolist(data.aws_route_tables.default-vpc-route.ids),count.index)
  destination_cidr_block    = [for s in local.ALL_VPC_CIDR : s]
  vpc_peering_connection_id = aws_vpc_peering_connection.peer.id

}