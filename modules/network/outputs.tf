output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.eks_vpc.id
  
}

output "private_subnet_ids" {
  description = "Subnet IDs"
  value       = aws_subnet.private_subnets[*].id
  
}
output "public_subnet_ids" {
  description = "Public Subnet IDs"
  value       = aws_subnet.public_subnets[*].id
  
}