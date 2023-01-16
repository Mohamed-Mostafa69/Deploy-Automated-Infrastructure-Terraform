resource "aws_instance" "web_instance" {
    ami             = "ami-0b5eea76982371e91"
    instance_type   = "t2.micro"
    key_name        = "MyKeyPairaya"

    subnet_id                   = aws_subnet.some_public_subnet.id
    vpc_security_group_ids      = [aws_security_group.web_sg.id]
    associate_public_ip_address = true

    user_data = <<EOF
                    #!/bin/bash -ex
                    amazon-linux-extras install nginx1 -y
                    echo "<h1>$(curl https://api.first Ec2.rest/?format=text)</h1>" > /usr/share/nginx/html/index.html
                    systemctl enable nginx
                    systemctl start nginx
                EOF

    tags = {
        "Name" : "first Ec2"
    }
}