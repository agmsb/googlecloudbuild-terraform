provider "google" {
  project     = "${var.project-name}"
  region      = "${var.region}"
}

resource "google_container_cluster" "gke-terraform" {
  name               = "gke-terraform"
  zone               = "${var.region}"
  initial_node_count = "3"

  node_config {
    disk_size_gb  = "10"
    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]

    labels {
      from = "terraform"
    }

    tags = ["terraform"]
  }

}

/* remove comment to add new node pool
resource "google_container_node_pool" "op" {
  name       = "olympic-pool"
  zone       = "us-central1-a"
  cluster    = "gke-terraform"
  node_count = 3
} */