resource "aws_instance" "example" {

  count= 10
  ami           = "ami-0220d79f3f480ecf5" # Amazon Linux 2 (official free-tier compatible)
  instance_type = "t3.micro"

  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    Name    = var.instances[count.index]
    Project = "roboshop"
  }
}

resource "aws_security_group" "allow_tls" {
  name        = "allow-all-terraform"
  description = "Allow inbound web traffic"
  

  
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags= {
     Name= "allow-all-terraform"
  }
}
