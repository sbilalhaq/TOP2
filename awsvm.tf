resource "aws_instance" "awsvm" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.subnetsforvpc2.id
  tags = {
    Name = "awsvm"
  }
}
