variable "ami"{

      type= string
      default= "ami-0220d79f3f480ecf5"
}

variable "tages_names"{
     type= map
     default = {
          Name= "terraform"
          Project= "roboshop"
     } 
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "allow_all_terraform"{

     type = string
     default = "allow-all-terraform"
}

variable "inbound_traffic" {

      type = string
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
    default = ["0.0.0.0/0"]
}

variable "ipv6_cidr_blocks"{

    type = list
    default = ["::/0"]
}

variable "tags"{

    type = map
    default = {
         Name= "allow-all-terraform-security"
    }
}
