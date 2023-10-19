variable REGION {
    default = "eu-west-2"
}

variable ZONE1 {
    default = "eu-west-2a"
}

variable ZONE2 {
    default = "eu-west-2b"
}

variable ZONE3 {
    default = "eu-west-2c"
}


variable USER {
    default = "ec2-user"
}

variable AMIS {
    type = map 
    default = {
        eu-west-2= "ami-04fb7beeed4da358b"
        eu-west-1= "ami-0dab0800aa38826f2"
    }
}
variable PUB_KEY {
    default = "dovekey.pub"
}

variable PRIV_KEY {
    default = "dovekey"
}

variable MYIP {
  default = "182.93.42.85.209/23"
}