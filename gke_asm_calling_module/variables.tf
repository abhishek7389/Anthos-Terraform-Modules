## Cluster Variables ##
variable "project_id" {
  description = "The project ID to host the cluster in"
  type        = string
}

variable "hub_project_id" {
  description = "anthos service mesh host  project in which the cluster is going to register."
  type        = string
}

variable "region" {
  description = "The region to host the cluster in"
  type        = string
}

variable "channel" {
  description = "The channel to use for this ASM installation.Must be one of rapid, regular, or stable."
  type        = string
}
