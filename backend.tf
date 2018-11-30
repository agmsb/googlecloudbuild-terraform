terraform {
    backend "gcs" {
      prefix  = "terraform/state"
      bucket  = "agmsb-tech-ops-tfstate"
      project = "agmsb-tech-ops"
    }
}