################## Instance Image Selection ##################
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"] # Ubuntu 22.04
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical's AWS account ID
}

################## Bastion EC2 Instance ##################
resource "aws_instance" "bastion" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id  # Using existing subnet
  key_name      = var.key_name

  vpc_security_group_ids = [var.security_group]  # Using existing security group

  tags = {
    Name = "bastion-host"
  }
}
