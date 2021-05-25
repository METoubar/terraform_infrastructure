resource "aws_security_group" "example-instance" {
  name        = "SSH-Conn"
  description = "security group that allows ssh and all egress traffic"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "example-instance"
  }
}

