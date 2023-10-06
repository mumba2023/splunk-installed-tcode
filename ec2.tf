resource "aws_instance" "ec2-demo" {
    ami = "ami-0aec300fa613b1c92"
    vpc_security_group_ids = [aws_security_group.splunk-sg.id]
    instance_type = "t2.micro"
    key_name = "ec2-demo"
    subnet_id = aws_subnet.public_subnet1.id
    user_data = file("install.sh")
 
    tags={
        Name = "Terraform instance"
        env = "Dev"
    }
}