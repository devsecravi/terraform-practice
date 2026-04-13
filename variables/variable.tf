variable "ami_id"{

      type = string
      default = "ami-0220d79f3f480ecf5"
      description= "RHEL 9 Image"
}

variable "instance_type"{

    type = string
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

     type= string
     default = "allow-all-terraform"
}

variable "sg_description"{
    type= string
    default = "Allow inbound web traffic"
}

