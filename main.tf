# Configuração do provider AWS
provider "aws" {
  region = var.region
}

# Configuração do Terraform
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.94.1"
    }
  }

  backend "s3" {
    bucket = var.backend_bucket
    key    = "${var.project_name}/${var.environment}/terraform.tfstate"
    region = var.region
  }

}

module "iam" {
  source       = "./modules/iam"
  project_name = var.project_name
  environment  = var.environment

}

module "eks" {
  source            = "./modules/cluster"
  project_name      = var.project_name
  environment       = var.environment
  cluster_name      = var.cluster_name
  cluster_role_arn  = module.iam.eks_cluster_role_arn
  node_role_arn     = module.iam.eks_node_role_arn
  subnet_ids        = concat(module.network.public_subnet_ids, module.network.private_subnet_ids)
  instance_types    = var.instance_types
  disk_size         = var.disk_size
  node_desired_size = var.node_desired_size
  node_max_size     = var.node_max_size
  node_min_size     = var.node_min_size
  node_labels       = var.node_labels
  vpc_cni_version   = var.vpc_cni_version
  coredns_version   = var.coredns_version

  depends_on = [module.network]
}
module "network" {
  source               = "./modules/network"
  project_name         = var.project_name
  environment          = var.environment
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  availability_zones   = var.availability_zones
  enable_nat_gateway   = var.enable_nat_gateway
}

module "iam" {
  source       = "./modules/iam"
  project_name = var.project_name
  environment  = var.environment

  depends_on = [module.network]

}

module "s3" {
  source       = "./modules/s3"
  project_name = var.project_name
  environment  = var.environment
  bucket_name  = var.bucket_name

  depends_on = [module.iam]

}
