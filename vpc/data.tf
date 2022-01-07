data "aws_route_tables" "default-vpc-route" {
  vpc_id = var.DEFAULT_VPC_ID
}

output "aws_route-tables" {
  value = data.aws_route_tables.default-vpc-route
}