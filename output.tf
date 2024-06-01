
# Outputing VPC ID

output "vpc_id" {
  value = module.vpc.vpc_id
}

#Outputting S3 bucket arn

output "s3bucket_arn" {
    value = module.mys3.s3arn
}

#outputting ec2 instance id

# output "instance_id" {
#    value = module.prod-instance.publicip
# }
