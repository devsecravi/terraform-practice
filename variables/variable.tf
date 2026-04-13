variable "ami_id"{

      default = "ami-0220d79f3f480ecf5"
      description= "RHEL 9 Image"
}

variable "instance_type"{

     default= "m3.micro"
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

     type= String
     default = "allow-all-terraform"
}

variable "sg_description"{
    type= String
    default = "Allow inbound web traffic"
}

