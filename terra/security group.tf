#we will create security group to allow network
resource "aws_security_group" "web_sg" {
    name    = "HTTP and SSH"
    vpc_id  = aws_vpc.name.id

    ingress { #inbound
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    
    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        protocol    = -1
        from_port   = 0
        to_port     = 0
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = 1
        cidr_blocks = ["0.0.0.0/0"]
    }
}