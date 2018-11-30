output "k8s_endpoint" {
  value = "${google_container_cluster.k8sexample.endpoint}"
}

output "k8s_master_version" {
  value = "${google_container_cluster.k8sexample.master_version}"
}