# Valores para as variáveis
region       = "us-east-1"
project_name = "eks-training"
environment  = "dev"

# Configurações de rede
vpc_cidr             = "10.77.16.0/20"
public_subnet_cidrs  = ["10.77.16.0/24", "10.77.17.0/24", "10.77.18.0/24"]
private_subnet_cidrs = ["10.77.22.0/24", "10.77.23.0/24", "10.77.24.0/24"]
availability_zones   = ["us-east-1a", "us-east-1b", "us-east-1c"]
enable_nat_gateway   = true

# Configurações do EKS
cluster_name            = "eks-infra-cluster"
kubernetes_version      = "1.27"
endpoint_private_access = true
endpoint_public_access  = true

# Configurações dos Nodes
instance_types    = ["t3a.medium"]
disk_size         = 20
node_desired_size = 2
node_max_size     = 4
node_min_size     = 1
node_labels = {
  "role"    = "worker"
  "type"    = "standard"
  "purpose" = "general"
}
