# resource "aws_instance" "jumphost" {
#   ami                    = data.aws_ami.ubuntu.id
#   vpc_security_group_ids = [aws_security_group.task-group.id]
#   instance_type          = "t2.micro"
#   subnet_id = var.public_subnet
#   associate_public_ip_address = true
#   monitoring             = true
#   user_data = file("cloud_init.txt")

#   tags          = {
#     Name        = "jumphost"
#   }
  
# }

resource "aws_instance" "jenkins" {
  ami                    = data.aws_ami.ubuntu.id
  vpc_security_group_ids = [aws_security_group.task-group.id]
  instance_type          = "t2.large"
  private_ip =  "172.31.2.30"
  monitoring             = true
  subnet_id = var.public_subnet
  user_data = file("cloud_init.txt")

  tags          = {
    Name        = "jenkins"
  }
}


# resource "aws_instance" "nginx" {
#   ami                    = data.aws_ami.ubuntu.id
#   vpc_security_group_ids = [aws_security_group.task-group.id]
#   instance_type          = "t2.small"
#   monitoring             = true
#   private_ip =  "172.31.2.30"
#   subnet_id = var.public_subnet
#   user_data = file("cloud_init.txt")

#   tags          = {
#     Name        = "webserver"
#   }
# }

# resource "aws_instance" "app" {
#   ami                    = data.aws_ami.ubuntu.id
#   vpc_security_group_ids = [aws_security_group.task-group.id]
#   instance_type          = "t2.small"
#   associate_public_ip_address = false
#   monitoring             = true
#   private_ip =  "172.31.16.11"
#   subnet_id = var.private_subnet
#   user_data = file("cloud_init.txt")

#   tags          = {
#     Name        = "app"
#   }
# }

# resource "aws_instance" "master-0" {
#   ami                    = data.aws_ami.ubuntu.id
#   vpc_security_group_ids = [aws_security_group.task-group.id]
#   instance_type          = "t2.large"
#   associate_public_ip_address = false
#   monitoring             = true
#   private_ip =  "172.31.16.10"
#   subnet_id = var.private_subnet
#   user_data = file("cloud_init.txt")

#   tags          = {
#     Name        = "master-0"
#   }
# }

# resource "aws_instance" "worker-0" {
#   ami                    = data.aws_ami.ubuntu.id
#   vpc_security_group_ids = [aws_security_group.task-group.id]
#   instance_type          = "t2.medium"
#   associate_public_ip_address = false
#   monitoring             = true
#   private_ip =  "172.31.16.20"
#   subnet_id = var.private_subnet
#   user_data = file("cloud_init.txt")

#   tags          = {
#     Name        = "worker-0"
#   }
# }



# resource "aws_instance" "worker-1" {
#   ami                    = data.aws_ami.ubuntu.id
#   vpc_security_group_ids = [aws_security_group.task-group.id]
#   instance_type          = "t2.medium"
#   associate_public_ip_address = false
#   monitoring             = true
#   private_ip =  "172.31.16.21"
#   subnet_id = var.private_subnet
#   user_data = file("cloud_init.txt")

#   tags          = {
#     Name        = "worker-1"
#   }
# }


# resource "aws_instance" "ha-proxy" {
#   ami                    = data.aws_ami.ubuntu.id
#   vpc_security_group_ids = [aws_security_group.task-group.id]
#   instance_type          = "t2.small"
#   associate_public_ip_address = false
#   monitoring             = true
#   private_ip =  "172.31.16.30"
#   subnet_id = var.private_subnet
#   user_data = file("cloud_init.txt")

#   tags          = {
#     Name        = "worker-0"
#   }
# }