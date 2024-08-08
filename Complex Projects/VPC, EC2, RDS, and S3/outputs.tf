output "vpc_id" {
  value = module.vpc.vpc_id
}

output "ec2_instance_id" {
  value = module.ec2.instance_id
}

output "rds_instance_endpoint" {
  value = module.rds.db_instance_endpoint
}

output "s3_bucket_arn" {
  value = module.s3.bucket_arn
}
