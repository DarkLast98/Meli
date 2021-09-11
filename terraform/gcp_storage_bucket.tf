resource "google_storage_bucket" "functions" {
  project       = data.google_project.project.project_id
  name          = "gcf-sources-${var.project_id}-${var.region}"
  location      = var.region
  force_destroy = true

  cors {
    max_age_seconds = 0
    method = [
      "GET",
    ]
    origin = [
      "https://*.cloud.google.com",
      "https://*.corp.google.com",
      "https://*.corp.google.com:*",
    ]
    response_header = []
  }
}