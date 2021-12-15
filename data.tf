data "aws_ami" "ubuntu" {

    most_recent = true

    filter {
        name   = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
    }

    filter {
        name = "virtualization-type"
        values = ["hvm"]
    }

    owners = ["099720109477"]
}

output "test" {
  value = data.aws_ami.ubuntu
}

data "aws_vpc" "default" {
  id = var.vpc_id
}

data "aws_subnet_ids" "default" {
  vpc_id = var.vpc_id
}

# data "aws_subnet" "default" {
#   for_each = data.aws_subnet_ids.example.ids
#   id       = each.value
# }