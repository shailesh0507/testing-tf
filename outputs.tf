# Root outputs for the infrastructure
output "vpc_id" {
  description = "VPC ID"
  value       = data.aws_vpc.default.id
}

output "application_url" {
  description = "URL to access the application through ALB"
  value       = "http://${module.load_balancer.alb_dns_name}"
}

output "alb_dns_name" {
  description = "Application Load Balancer DNS name"
  value       = module.load_balancer.alb_dns_name
}

output "web_tier_instance_ids" {
  description = "Web tier EC2 instance IDs"
  value       = module.ec2.web_tier_instance_ids
}

output "app_tier_instance_ids" {
  description = "App tier EC2 instance IDs"
  value       = module.ec2.app_tier_instance_ids
}

output "s3_bucket_name" {
  description = "S3 bucket name for application storage"
  value       = aws_s3_bucket.app_bucket.id
}