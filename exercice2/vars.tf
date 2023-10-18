variable REGION {   
    default = "eu-west-2" 
}

variable ZONE {
    default = "eu-west-2"
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