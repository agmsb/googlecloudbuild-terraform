# Copyright 2018, Google, Inc.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

provider "google" {
  project     = "${var.project-name}"
  region      = "${var.region}"
}

resource "google_container_cluster" "gke-terraform" {
  name               = "gke-terraform"
  zone               = "${var.region}"
  initial_node_count = "1"

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

resource "google_container_node_pool" "op" {
  name       = "olympic-pool"
  zone       = "us-central1-a"
  cluster    = "gke-terraform"
  node_count = 3

  node_config {
    machine_type = "n1-standard-4"
  }
}

