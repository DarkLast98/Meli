/*
 * Provision Api function
 *
 * @see https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloudfunctions_function
 */
resource "google_cloudfunctions_function" "function" {
  name                  = "api"
  description           = "Meli Functions Api"
  source_archive_bucket = google_storage_bucket.functions.name
  source_archive_object = google_storage_bucket_object.archive.name
  runtime               = "nodejs14"
  project               = var.project_id
  available_memory_mb   = var.functions_config.available_memory_mb
  timeout               = var.functions_config.timeout
  trigger_http          = true
  entry_point           = "api"

  environment_variables = {
    FIREBASE_CONFIG = jsonencode({
      "projectId" : data.google_project.project_id
      "storageBucket" : lookup(data.google_firebase_web_app_config.basic, "storage_bucket", ""),
      "locationId" : var.location_id
    })
  }
}