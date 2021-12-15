resource "aws_route_table" "from-private-to-internet" {
  vpc_id = data.aws_vpc.default.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.NAT_GW.id
  }
  tags = {
    Name = "default routing table for the private subnet"
  }
}

resource "aws_route_table_association" "subnet-association" {
  subnet_id      = var.private_subnet
  route_table_id = aws_route_table.from-private-to-internet.id
}