resource "aws_instance" "eaxmple" {

      ami = var.aws_ami
      instance_type = var.instance_type
      vpc_security_group_ids = [aws_security_group.allow_ts.id]

    tags = var.tags

}

resource "aws_security_group" "allow_ts" {

     name = var.sg_name
     description = var.sg_description

     egress {

          from_port = var.from_port
          to_port = var.to_port
          protocol = "-1"
          cidr_blocks = var.cidr_blocks
          ipv6_cidr_blocks= var.ipv6_cidr_blocks
     }

     ingress {

        from_port = var.from_port
        to_port = var.to_port
        protocol = "-1"
        cidr_blocks = var.cidr_blocks
        ipv6_cidr_blocks= var.ipv6_cidr_blocks
     }

    tags= var.sg_tags
}