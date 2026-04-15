variable  "tags_list"{

     type = list(string)
     default = ["mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend"]
}

variable "zone_id" {
    default = "Z05454352LP47ZQWSG7WJ"
}

variable "domain_name" {
    default = "daws88s.online"
}
