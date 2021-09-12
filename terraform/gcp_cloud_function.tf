/*
 * Provision Api function
 *
 * @see https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloudfunctions_function
 * @se https://cloud.google.com/functions/docs/concepts/exec#runtimes
 */
resource "google_cloudfunctions_function" "function" {
  name                  = "api"
  description           = "Meli Functions Api"
  source_archive_bucket = google_storage_bucket.functions.name
  source_archive_object = google_storage_bucket_object.archive.name
  runtime               = var.runtime
  project               = var.project_id
  trigger_http          = true
  entry_point           = "dnaanalizer.Api"

  environment_variables = {
    FIREBASE_CONFIG = jsonencode({
      "projectId" : functions.project_id
      "storageBucket" : "",
      "locationId" : var.location_id
    })
  }
}