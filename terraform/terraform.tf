  
terraform {
  backend "gcs" {
    bucket  = "daniel-meli-dna-test"
    prefix  = "terraform/state"
  }

  required_providers {
    google = {
      source = "hashicorp/google"
    }

    google-beta = {
      source = "hashicorp/google-beta"
    }
  }

  required_version = ">= 1.0.0"
}