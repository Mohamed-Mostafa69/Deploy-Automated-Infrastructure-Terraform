#public-subnet
resource "aws_subnet" "some_public_subnet" {
    vpc_id              = aws_vpc.name.id
    cidr_block          = "10.0.1.0/24"
    availability_zone   = "us-east-1b" #don't write 2a will give you error

    tags = {
        Name = "Some Public Subnet"
    }
}
#private-subnet
resource "aws_subnet" "some_private_subnet" {
    vpc_id              = aws_vpc.name.id
    cidr_block          = "10.0.2.0/24"
    availability_zone   = "us-east-1b"

    tags = {
        Name = "Some Private Subnet"
    }
}