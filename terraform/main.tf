terraform {
  required_providers {
    minikube = {
      source  = "scott-the-programmer/minikube"
      version = "~> 0.4"
    }
  }

  required_version = ">= 1.3.0"
}

provider "minikube" {
  kubernetes_version = var.kubernetes_version
}

resource "minikube_cluster" "this" {
  cluster_name = var.cluster_name
  driver       = var.driver

  cpus   = var.cpus
  memory = var.memory

  addons = var.addons

  cni = var.cni

  container_runtime = var.container_runtime
}
