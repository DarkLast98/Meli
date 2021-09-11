/**
 * Provision Firestore instance
 *
 * @see https://cloud.google.com/firestore/docs/solutions/automate-database-create
 */
resource "google_project_service" "firestore" {
  count = var.firestore ? 1 : 0

  service                    = "firestore.googleapis.com"
  project                    = var.project_id
  disable_dependent_services = true
}

/**
 * Provision Firestore instance
 *
 * @see https://cloud.google.com/firestore/docs/solutions/automate-database-create
 */
resource "google_app_engine_application" "firestore" {
  count = var.firestore ? 1 : 0

  provider      = google-beta
  project       = var.project_id
  location_id   = var.location_id
  database_type = "CLOUD_FIRESTORE"
}