data "google_client_config" "default" {}

provider "kubernetes" {
  host                   = "https://${data.terraform_remote_state.gke_cluster.outputs.kubernetes_endpoint}"
  token                  = data.google_client_config.default.access_token
  cluster_ca_certificate = base64decode(data.terraform_remote_state.gke_cluster.outputs.ca_certificate)
}


module "asm" {
  source           = "../modules/google_kubernetes_engine/asm"
  project_id       = var.project_id
  cluster_name     = data.terraform_remote_state.gke_cluster.outputs.cluster_name
  cluster_location = data.terraform_remote_state.gke_cluster.outputs.cluster_location
  enable_cni       = true
  multicluster_mode         = "connected"
  enable_fleet_registration = true
  enable_mesh_feature       = true
  channel                   = var.channel
  hub_project_id         = var.hub_project_id
}

