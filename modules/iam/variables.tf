# Variáveis gerais
variable "region" {
  description = "Region where the resources will be created"
  type        = string
  default     = "us-east-1"
}


variable "project_name" {
  description = "Project Name"
  type        = string
  default     = "eks-dev"
}

variable "environment" {
  description = "Environment (ex: dev, staging, prod)"
  type        = string
  default     = "dev"
}