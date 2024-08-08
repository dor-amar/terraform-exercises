output "instance_id" {
  value = aws_instance.example.id
}

output "public_ip" {
  value = aws_instance.example.public_ip
}

output "ebs_volume_id" {
  value = aws_ebs_volume.example.id
}
