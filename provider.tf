provider "google" {
  project = var.project_id
  region  = var.region
}

provider "google-beta" {
  project = var.project_id
  region  = var.region
}

terraform {
  required_providers {
    google = {
      version = "4.84.0"
    }
    google-beta = {
      version = "4.84.0"
    }
  }

  backend "gcs" {
    bucket = "coen-terraform-state-test"
    prefix = "coen-munir-kakar"
  }
}
