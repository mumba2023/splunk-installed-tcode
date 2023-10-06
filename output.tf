# create the output
output "vpc_id" {
  value = aws_vpc.splunk-vpc.id
}

output "splunk_sg_id" {
  value = aws_security_group.splunk-sg.id
}

output "ec2_public_ip" {
  value = aws_instance.ec2-demo.public_ip
}