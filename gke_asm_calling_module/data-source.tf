data "terraform_remote_state" "gke_cluster" {
  backend = "gcs"
  config = {
    bucket = "<your backend bucket>"
    prefix = "<Path prefix to your GKE cluster state file>"
  }
}
