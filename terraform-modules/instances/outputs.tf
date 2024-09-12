output "public_instance_id" {
  description = "The ID of the public instance"
  value       = aws_instance.public.id
}

output "private_instance_id" {
  description = "The ID of the private instance"
  value       = aws_instance.private.id
}

