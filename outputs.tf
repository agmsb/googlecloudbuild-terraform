output "k8s_master_version" {
  value = "${google_container_cluster.k8sexample.master_version}"
}