#we will create vpc
resource "aws_vpc" "name" {
    cidr_block = "10.0.0.0/16" #vpc ip

    tags = {
        Name = "aws vpc" #this is aws it will show in vpc
    }
}