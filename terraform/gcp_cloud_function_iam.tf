/**
 * Create Api public iam role
 *
 * @see https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloudfunctions_function_iam
 */
resource "google_cloudfunctions_function_iam_member" "invoker" {
  project        = google_cloudfunctions_function.function.project
  region         = google_cloudfunctions_function.function.region
  cloud_function = google_cloudfunctions_function.function.name
  role           = "roles/cloudfunctions.invoker"
  member         = "allUsers"
}