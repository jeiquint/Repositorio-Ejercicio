resource "aws_instance" "instancia_trf" {
  ami = "ami-04a81a99f5ec58529"
  instance_type = "t2.micro"
  key_name = "key_Windows_Personal"
  associate_public_ip_address = true
  # asociar VPC por subnet
  subnet_id = aws_subnet.subnet_clase_1.id
  # asociar security group
  vpc_security_group_ids = [aws_security_group.sg_ssh.id]
  tags = {
    Name = "instancia terraform"
  }
}

