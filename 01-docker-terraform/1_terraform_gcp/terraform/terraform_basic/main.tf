terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
# Credentials only needs to be set if you do not have the GOOGLE_APPLICATION_CREDENTIALS set
#  credentials = 
  project = "robust-episode-412509"
  region  = "asia-southeast2"
}



resource "google_storage_bucket" "data-lake-bucket" {
  name          = "jhxdoe_de_zoomcamp_terraform"
  location      = "asia-southeast2"

  # Optional, but recommended settings:
  storage_class = "STANDARD"
  uniform_bucket_level_access = true

  versioning {
    enabled     = true
  }

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 30  // days
    }
  }

  force_destroy = true
}


resource "google_bigquery_dataset" "dataset" {
  dataset_id = "Terraform_DE_Zoomcamp"
  project    = "robust-episode-412509"
  location   = "asia-southeast2"
}