# ============================================
# ============================================
# Terraform Configuration & Provider Setup
# ============================================
terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "terraform-demo-shailesh"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}

# ============================================
# AWS Provider Configuration
# ============================================
provider "aws" {
  region = "ap-south-1"
  default_tags {
    tags = {
      Environment = var.environment
      Project     = var.project_name
      ManagedBy   = "Terraform"
    }
  }
}