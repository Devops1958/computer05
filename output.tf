output "public_ip" {
    value = aws_lightsail_instance.website1.public_ip_address
}
output "ssh" {
    value = "ssh -i team.pem centos@${aws_lightsail_instance.website1.public_ip_address}"
}
