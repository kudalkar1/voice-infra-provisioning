output "pabx_server_ip" {
  value = aws_instance.pabx_server.public_ip
}

output "recording_server_ip" {
  value = aws_instance.recording_server.public_ip
}

output "pabx_db_ip" {
  value = aws_instance.pabx_db.public_ip
}

output "recording_db_ip" {
  value = aws_instance.recording_db.public_ip
}
