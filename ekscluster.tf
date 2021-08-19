resource "rancher2_cluster" "eks_cluster" {
  name        = "eks-cluster"
  description = "Rancher EKS cluster"
  eks_config_v2 {
    cloud_credential_id = rancher2_cloud_credential.AWS.id
    region              = var.region
    kubernetes_version  = "1.20"
    logging_types       = ["audit", "api"]
    security_groups     = [var.security_group_id]
    subnets             = [var.subnet_id_a, var.subnet_id_b, var.subnet_id_c]
    node_groups {
      name          = "node_group1"
      instance_type = "t3.medium"
      desired_size  = 3
      max_size      = 5
      min_size      = 2
    }
    private_access      = true
    public_access       = false
  }
}