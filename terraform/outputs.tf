output "cluster_name" {
  description = "Name of the provisioned Minikube cluster"
  value       = minikube_cluster.this.cluster_name
}

output "cluster_host" {
  description = "Kubernetes API server endpoint"
  value       = minikube_cluster.this.host
}

output "client_certificate" {
  description = "Client certificate for authenticating to the cluster"
  value       = minikube_cluster.this.client_certificate
  sensitive   = true
}

output "client_key" {
  description = "Client key for authenticating to the cluster"
  value       = minikube_cluster.this.client_key
  sensitive   = true
}

output "cluster_ca_certificate" {
  description = "CA certificate of the cluster"
  value       = minikube_cluster.this.cluster_ca_certificate
  sensitive   = true
}
