output "iam_arn" {
  description = "IAM Role ARN for EKS Cluster"
  value       = aws_iam_role.eks_cluster_role.arn
  
}

output "eks_cluster_role_name" {
  description = "EKS Cluster IAM Role Name"
  value       = aws_iam_role.eks_cluster_role.name
  
}
output "eks_node_role_arn" {
  description = "EKS Node IAM Role Name"
  value       = aws_iam_role.eks_node_role.arn
  
}
output "eks_cluster_role_id" {
  description = "EKS Cluster IAM Role ID"
  value       = aws_iam_role.eks_cluster_role.id
  
}

output "eks_node_role_id" {
  description = "EKS Node IAM Role ID"
  value       = aws_iam_role.eks_node_role.id
  
}

