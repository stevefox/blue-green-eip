output "eip" {
  value = aws_eip.example.public_ip
  description = "Public IP of the EIP"
}

output "eip_association" {
  value = aws_eip_association.eip_assoc.instance_id
  description = "Instance ID of the current target instance."
}
