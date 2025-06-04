#-----------------------------------------
# Variáveis para o módulo de S3
variable "bucket_name" {
  description = "The name of the S3 bucket to be created or used"
  type        = string
}

variable "region" {
  description = "Região da AWS onde os recursos serão criados"
  type        = string
  default     = "us-east-1"
}


variable "project_name" {
  description = "Nome do projeto"
  type        = string
  default     = "eks-demo"
}

variable "environment" {
  description = "Ambiente (dev, staging, prod)"
  type        = string
  default     = "dev"

}
