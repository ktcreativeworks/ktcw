output "subnet_id" {
  value = aws_subnet.public_1.id
  description = "Output of new subnet_ids"
}

output "vpc_security_group_id" {
  value = aws_security_group.allow_ssh.id
  description = "Output of new sgs"
}