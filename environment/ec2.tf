resource "aws_instance" "web" {
  count=10
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
        Name = var.tages_names.Name[count.index]
        Project = var.tages_names.Project
  }
}


resource "aws_security_group" "allow_tls" {
  name        = var.allow_all_terraform
  description = var.inbound_traffic

  
  ingress {
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = "-1"
    cidr_blocks = var.cidr_blocks
    ipv6_cidr_blocks = var.ipv6_cidr_blocks
  }

  
  egress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = "-1"
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = var.ipv6_cidr_blocks
  }

  tags= var.tags
}
