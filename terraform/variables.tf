variable "cluster_name" {
  description = "Name of the Minikube cluster"
  type        = string
  default     = "minikube"
}

variable "kubernetes_version" {
  description = "Kubernetes version to use (e.g. 'v1.32.0'). Empty string uses the latest stable."
  type        = string
  default     = ""
}

variable "driver" {
  description = "Minikube driver to use: docker, hyperkit, kvm2, virtualbox, podman, none"
  type        = string
  default     = "docker"

  validation {
    condition     = contains(["docker", "hyperkit", "kvm2", "virtualbox", "podman", "none"], var.driver)
    error_message = "Driver must be one of: docker, hyperkit, kvm2, virtualbox, podman, none."
  }
}

variable "cpus" {
  description = "Number of CPUs to allocate to the Minikube node"
  type        = number
  default     = 2
}

variable "memory" {
  description = "Amount of memory (in MB) to allocate to the Minikube node"
  type        = number
  default     = 2048
}

variable "addons" {
  description = "List of Minikube addons to enable"
  type        = list(string)
  default = [
    "default-storageclass",
    "storage-provisioner",
    "metrics-server",
    "dashboard",
    "ingress",
  ]
}

variable "cni" {
  description = "Container Network Interface plugin to use."
  type        = string
  default     = "auto"
}

variable "container_runtime" {
  description = "Container runtime to use: docker, containerd, or cri-o"
  type        = string
  default     = "docker"

  validation {
    condition     = contains(["docker", "containerd", "cri-o"], var.container_runtime)
    error_message = "Container runtime must be one of: docker, containerd, cri-o."
  }
}
