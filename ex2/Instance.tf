resource "aws_instance" "web" {
  ami                    = data.aws_ami.Amiid.id
  instance_type          = "t3.micro"
  key_name               = "dove-key"
  vpc_security_group_ids = [aws_security_group.dove-sg.id]
  availability_zone      = "us-east-1a"



  tags = {
    Name    = "HelloWorld"
    Project = "Dove"
  }
}  
resource "aws_ec2_instance_state" "webstatr" {
    instance_id = aws_instance.web.id
    state = "running"
  
}