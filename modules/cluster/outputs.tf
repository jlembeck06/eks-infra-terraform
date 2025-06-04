# Cluster outputs for EKS infrastructure

output "cluster_id" {
  description = "Nome do cluster EKS"
  value       = aws_eks_cluster.eks_cluster.id
}

output "cluster_endpoint" {
  description = "Endpoint para o API server do EKS"
  value       = aws_eks_cluster.eks_cluster.endpoint
}

output "cluster_security_group_id" {
  description = "ID do security group do cluster EKS"
  value       = aws_security_group.eks_cluster_sg.id
}

output "cluster_version" {
  description = "Versão do Kubernetes no cluster EKS"
  value       = aws_eks_cluster.eks_cluster.version
}

output "cluster_arn" {
  description = "ARN do cluster EKS"
  value       = aws_eks_cluster.eks_cluster.arn
}

# nodegroup outputs
output "node_group_id" {
  description = "ID do node group EKS"
  value       = aws_eks_node_group.eks_node_group.id
}

output "node_security_group_id" {
  description = "ID do security group dos nodes EKS"
  value       = aws_security_group.eks_nodes_sg.id
}

# Command to configure kubectl
output "configure_kubectl" {
  description = "Comando para configurar o kubectl"
  value       = "aws eks --region ${var.region} update-kubeconfig --name ${aws_eks_cluster.eks_cluster.name}"
}
