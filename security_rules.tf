resource "aws_security_group" "task-group" {
  name        = "task-group"
  description = "Access to vpc instances"
  vpc_id      = data.aws_vpc.default.id
}

resource "aws_security_group_rule" "default_out_all" {
  security_group_id = aws_security_group.task-group.id
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks = [
    "0.0.0.0/0",
  ]
}

resource "aws_security_group_rule" "in_ICMP" {
  security_group_id = aws_security_group.task-group.id
  type              = "ingress"
  from_port         = 8
  to_port           = 0
  protocol          = "icmp"
  cidr_blocks = [
    "0.0.0.0/0",
  ]
}

resource "aws_security_group_rule" "default_in_ssh" {
  security_group_id        = aws_security_group.task-group.id
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
  cidr_blocks = [
    "0.0.0.0/0",
  ]
}

resource "aws_security_group_rule" "default_in_8080" {
  security_group_id        = aws_security_group.task-group.id
  type                     = "ingress"
  from_port                = 8080
  to_port                  = 8080
  protocol                 = "tcp"
  cidr_blocks = [
    "0.0.0.0/0",
  ]
}

resource "aws_security_group_rule" "default_in_80" {
  security_group_id        = aws_security_group.task-group.id
  type                     = "ingress"
  from_port                = 80
  to_port                  = 80
  protocol                 = "tcp"
  cidr_blocks = [
    "0.0.0.0/0",
  ]
}