resource "aws_eip" "gw" {
  vpc      = true
}

resource "aws_nat_gateway" "NAT_GW" {
  subnet_id     = var.public_subnet
  allocation_id = aws_eip.gw.id
  tags = {
    Name = "PRIVATE-SUBNET-NATGW"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
#   depends_on = [aws_internet_gateway.example]
}