resource "aws_key_pair" "tf_key" {
  key_name   = "terraform-key"
  public_key = file("terraform-key.pub")
}

resource "aws_default_vpc" "default" {

}

resource "aws_security_group" "tf_sg" {
  name = "terraform-sg"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "${var.env}-terraform-sg"
    env  = var.env
  }
}

resource "aws_instance" "ubuntu" {
  ami                    = var.ami # Ubuntu Server 
  instance_type          = var.instance_type
  key_name               = aws_key_pair.tf_key.key_name
  vpc_security_group_ids = [aws_security_group.tf_sg.id]
  user_data              = file("user_data.sh")
  tags = {
    Name = "${var.env}-${var.instance_name}"
    env  = var.env
  }
}

