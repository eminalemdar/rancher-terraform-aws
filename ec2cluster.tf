resource "rancher2_cluster" "ec2_cluster" {
  name        = "ec2-cluster"
  description = "Rancher EC2 Cluster"
  rke_config {
    network {
      plugin = "canal"
    }
    upgrade_strategy {
      drain = true
      max_unavailable_worker = "20%"
    }
  }
}

resource "rancher2_node_pool" "control_plane_pool" {
  cluster_id       = rancher2_cluster.ec2_cluster.id
  name             = "control-plane"
  hostname_prefix  = "cp-"
  node_template_id = rancher2_node_template.control_plane.id
  quantity         = 3
  control_plane    = true
  etcd             = true
  worker           = false
}

resource "rancher2_node_pool" "control_plane_pool" {
  cluster_id       = rancher2_cluster.ec2_cluster.id
  name             = "worker_nodes"
  hostname_prefix  = "worker-"
  node_template_id = rancher2_node_template.worker.id
  quantity         = 3
  control_plane    = false
  etcd             = false
  worker           = true
}