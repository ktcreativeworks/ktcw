resource "aws_instance" "web" {
  ami           = lookup(var.ami_id, var.region)
  instance_type = var.instance_type

# Public Subnet assign to instance
  subnet_id     = var.subnet_id

# Security group assign to instance
  vpc_security_group_ids=[var.vpc_security_group_ids]

# key name
key_name = var.key_name

  tags = {
    Name = "Ec2-with-VPC"
  }
}