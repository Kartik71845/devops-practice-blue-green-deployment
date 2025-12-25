output "ec2_public_ip" {
  value = aws_instance.ubuntu.public_ip
}

output "ec2_public_dns" {
  value = aws_instance.ubuntu.public_dns
}

output "ec2_username" {
  value = "ubuntu"

}