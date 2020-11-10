output "eip" {
  value = aws_eip.example.public_ip
}

output "eip_association" {
  value = aws_eip_association.eip_assoc.instance_id
}
