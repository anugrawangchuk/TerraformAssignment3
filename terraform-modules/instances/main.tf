resource "aws_instance" "public" {
  ami               = var.ami
  instance_type     = var.instance_type
  subnet_id         = var.subnet_id
  security_groups   = [var.security_group_id]
  key_name          = var.key_name  # Use the key_name here

  tags = {
    Name = "${var.name}-public"
  }
}

resource "aws_instance" "private" {
  ami               = var.ami
  instance_type     = var.instance_type
  subnet_id         = var.subnet_id
  security_groups   = [var.security_group_id]
  key_name          = var.key_name  # Use the key_name here

  tags = {
    Name = "${var.name}-private"
  }
}

