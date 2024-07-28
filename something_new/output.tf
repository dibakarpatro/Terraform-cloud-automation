output "cluster_name" {
    description = "Amazon web serice EKS cluster Name"
    value = module.eks.cluster_name  
}
output "cluster_endpoint" {
    description = "Endpoint for aws EKS"
    value = module.eks.cluster_endpoint  
}
output "region" {
    description = "Amazon EKS cluster region"
    value = var.region 
}
output "cluster_security_group_id" {
    description = "Security group id for aws_eks cluster"
    value = module.eks.cluster_security_group_id
}
