resource "aws_instance" "sshec2" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.subnetsforvpc1.id
 
  tags = {
    Name = "awsvmforssh"
  }
}

resource "aws_eip" " eip" {
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.sshec2.id
  allocation_id = aws_eip.eip.id
}
