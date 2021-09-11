/**
 * Enable firestore required services
 *
 * @see https://cloud.google.com/firestore/docs/solutions/automate-database-create
 */
resource "google_project_service" "firestore_services" {
  for_each = toset(["firestore.googleapis.com", "appengine.googleapis.com"])

  service                    = each.key
  project                    = var.project_id
  disable_dependent_services = true
}

/**
 * Provision Firestore instance
 *
 * @see https://cloud.google.com/firestore/docs/solutions/automate-database-create
 * @see https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/app_engine_application
 */
resource "google_app_engine_application" "firestore" {
  provider      = google-beta
  project       = var.project_id
  location_id   = var.region
  database_type = "CLOUD_FIRESTORE"

  depends_on = [
    google_project_service.firestore_services
  ]
}