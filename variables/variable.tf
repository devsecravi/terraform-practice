variable "ami_id"{

      type = string
      default = "ami-0220d79f3f480ecf5"
      description= "RHEL 9 Image"
}

variable "instance_type"{

    type = string
     default= "t3.micro"
}

variable "ec2_tags"{
      type = map
      default ={
        Name= "variable-demo"
        Project = "roboshop"
        Terraform =" true"
        Environment= "dev"
      }
}

variable "sg_allowterraform"{

     type= string
     default = "allow-practice-terraform"
}

variable "sg_description"{
    type= string
    default = "Allow inbound web traffic"
}

variable "from_port"{

     type = number
     default = 0
}

variable "to_port"{
    type = number

    default = 0
}

variable "cidr_blocks"{
     
     type = list
     default= ["0.0.0.0/0"]
}
