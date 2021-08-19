resource "rancher2_node_template" "control_plane" {
  name                = "control_plane"
  description         = "AWS EC2 Node Template for control plane instances"
  cloud_credential_id = rancher2_cloud_credential.AWS.id
  engine_install_url  = var.docker_install_sh
  amazonec2_config {
    ami            = var.ami
    region         = var.region
    security_group = [var.security_group_name]
    subnet_id      = var.subnet_id_a
    vpc_id         = var.vpc_id
    zone           = var.az
    instance_type  = var.control_plane_instance_type
  }
}

resource "rancher2_node_template" "worker" {
  name                = "worker"
  description         = "AWS EC2 Node Template for worker instances"
  cloud_credential_id = rancher2_cloud_credential.AWS.id
  engine_install_url  = var.docker_install_sh
  amazonec2_config {
    ami            = var.ami
    region         = var.region
    security_group = [var.security_group_name]
    subnet_id      = var.subnet_id_a
    vpc_id         = var.vpc_id
    zone           = var.az
    instance_type  = var.worker_instance_type
  }
}