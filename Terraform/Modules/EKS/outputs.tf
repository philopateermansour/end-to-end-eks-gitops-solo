output "cluster_endpoint" {
  value = aws_eks_cluster.eks_cluster.endpoint
}

output "cluster_ca_certificate" {
  value = aws_eks_cluster.eks_cluster.certificate_authority[0].data
}

output "cluster_name" {
  value = aws_eks_cluster.eks_cluster.name
}
output "cluster_url" {
  value = aws_eks_cluster.eks_cluster.identity[0].oidc[0].issuer
}
output "eks_cluster_token" {
  value = data.aws_eks_cluster_auth.cluster_token.token
  sensitive = true
}