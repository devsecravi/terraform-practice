resource "aws_instance" "example" {

  ami           = var.ami_id # Amazon Linux 2 (official free-tier compatible)
  instance_type = var.instance_type

  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = var.ec2_tags
}

resource "aws_security_group" "allow_tls" {
  name        = var.sg_allowterraform
  description = var.sg_description
  

  
  ingress {
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = "-1"
    cidr_blocks = var.cidr_blocks
    ipv6_cidr_blocks = ["::/0"]
  }

  
  egress {
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = "-1"
    cidr_blocks = var.cidr_blocks
    ipv6_cidr_blocks = ["::/0"]
  }

  tags= {
     Name= "allow-all-terraform"
  }
}
