# ============================================
# ALB Module - Input Variables
# ============================================

variable "vpc_id" {
  description = "VPC ID where ALB will be deployed"
  type        = string
}

variable "public_subnets" {
  description = "Public subnet IDs for ALB"
  type        = list(string)
}

variable "web_instance_ids" {
  description = "Web instance IDs (cross-module reference)"
  type        = list(string)
}

variable "app_instance_ids" {
  description = "App instance IDs"
  type        = list(string)
}

variable "name" {
  description = "Load balancer name"
  type        = string
  default     = "app-alb"
}

variable "security_group_id" {
  description = "Security group ID for the load balancer"
  type        = string
}

variable "environment" {
  description = "Environment (dev, prod)"
  type        = string
}

variable "allowed_cidr_blocks" {
  description = "CIDR blocks allowed for ALB access"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "target_group_name" {
  description = "Target group name"
  type        = string
  default     = "web-tg"
}
