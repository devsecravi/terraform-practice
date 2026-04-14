variable "instances"{
      type = list
      default = ["mongodb","catalogue","frontend","redis","user","cart","mysql","shipping","rabbitmq","payment"]
}