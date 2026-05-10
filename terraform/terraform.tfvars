cluster_name       = "minikube-cluster"
kubernetes_version = ""     
driver             = "docker"
cpus               = 2
memory             = 4096

container_runtime = "docker"
cni               = "auto"

addons = [
  "default-storageclass",
  "storage-provisioner",
  "metrics-server",
  "dashboard",
  "ingress",
]
