variable  "tags_list"{

     type = list(string)
     default = ["mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend"]
}

variable "zone_id" {
    default = "Z05013202FKF0ZL12WAOP"
}

variable "domain_name" {
    default = "daws88s.online"
}
