terraform {
    backend "gcs" {
      prefix  = "terraform/state"
      bucket  = "BUCKET-NAME"
      project = "PROJECT-ID"
    }
}