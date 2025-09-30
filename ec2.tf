resource "aws_instance" "server1" {
  instance_type          = var.INSTANCE_TYPE
  user_data              = file("setup.sh")
  vpc_security_group_ids = [aws_security_group.sg2.id]
  subnet_id              = aws_subnet.private1.id
  availability_zone      = "${var.REGION}a"
  ami                    = "ami-0a232144cf20a27a5"

  tags = {
    Name = var.ENVIRONMENT
  }

}


resource "aws_instance" "server2" {
  instance_type          = "t2.micro"
  user_data              = file("setup.sh")
  vpc_security_group_ids = [aws_security_group.sg2.id]
  subnet_id              = aws_subnet.private2.id
  availability_zone      = "us-east-1b"
  ami                    = "ami-0a232144cf20a27a5"

  tags = {
    Name = "Web2"
  }

}