# attache volume
resource "aws_ebs_volume" "splunk-sg" {
  availability_zone = "us-east-2a"
  size              = 25 
}